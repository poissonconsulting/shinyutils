### this is from a stackoverflow answer to make the slackr_bot function prettier

#' Pretty slack bot message
#'
#' @param ... An expression.
#' @param channel A character string of the channel name.
#' @param username A character string of the username. 
#' @param incoming_webhook_url A character string of the incoming webhook url. 
#' @return TRUE
#' @export
#' 
slack_bot <- function(..., channel, username, incoming_webhook_url) {
  
  chk_string(channel)
  chk_string(username)
  chk_string(incoming_webhook_url)
  
  resp_ret <- ""
  
  if (!missing(...)) {
    
    # get the arglist
    args <- substitute(list(...))[-1L]
    
    # setup in-memory sink
    rval <- NULL
    fil <- textConnection("rval", "w", local = TRUE)
    
    sink(fil)
    on.exit({
      sink()
      close(fil)
    })
    
    # where we'll need to eval expressions
    pf <- parent.frame()
    
    # how we'll eval expressions
    evalVis <- function(expr) withVisible(eval(expr, pf))
    
    # for each expression
    for (i in seq_along(args)) {
      
      expr <- args[[i]]
      
      # do something, note all the newlines...Slack ``` needs them
      tmp <- switch(mode(expr),
                    # if it's actually an expresison, iterate over it
                    expression = {
                      cat(sprintf("> %s\n", deparse(expr)))
                      lapply(expr, evalVis)
                    },
                    # if it's a call or a name, eval, printing run output as if in console
                    call = ,
                    name = {
                      cat(sprintf("> %s\n", deparse(expr)))
                      list(evalVis(expr))
                    },
                    # if pretty much anything else (i.e. a bare value) just output it
                    integer = ,
                    double = ,
                    complex = ,
                    raw = ,
                    logical = ,
                    numeric = cat(sprintf("%s\n\n", as.character(expr))),
                    character = cat(sprintf("%s\n\n", expr)),
                    stop("mode of argument not handled at present by slackr"))
      
      for (item in tmp) if (item$visible) { print(item$value, quote = FALSE); cat("\n") }
    }
    
    on.exit()
    
    sink()
    close(fil)
    
    # combined all of them (rval is a character vector)
    output <- paste0(rval, collapse="\n")
    
    loc <- Sys.getlocale('LC_CTYPE')
    Sys.setlocale('LC_CTYPE','C')
    on.exit(Sys.setlocale("LC_CTYPE", loc))
    
    resp <- httr::POST(url = incoming_webhook_url, encode = "form",
                       httr::add_headers(`Content-Type` = "application/x-www-form-urlencoded",
                                         Accept = "*/*"), body = utils::URLencode(sprintf("payload={\"channel\": \"%s\", \"username\": \"%s\", \"text\": \"%s\"%s}",
                                                                                          channel, username, output)))
    httr::warn_for_status(resp)
  }
  return(invisible())
}