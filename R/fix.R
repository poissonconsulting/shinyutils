# Fix UI
#' @title fix_ui and fix_server
#'
#' @param fix A character string of the fix text.
#' @param condition_name A character string of the condition name or, if add_output_ns = FALSE, JS code evaluating a condition (with no server side component).
#' @param fix_size A character string of the fix text size.
#' @param add_output_ns A flag indicating whether to add output and namespace to condition string.
#' @param ns A function of the namespace.
#' @param ... arguments passed to conditionalPanel
#' @param output internal
#' @param condition A shiny reactive evaluating to a flag.
#'
#' @rdname fix
#'
#' @keywords internal
#' @export
fix_ui <- function(fix, condition_name, ns = NS(NULL), add_output_ns = TRUE,
                   fix_size = "13px", ...){

  chk_string(fix)
  chk_string(condition_name)

  if(isTRUE(add_output_ns))
    condition_name <- paste(glue("output['{ns(condition_name)}']"))

  print(condition_name)
  conditionalPanel(
    condition = condition_name,
    fix_text(fix, fix_size), ...
  )
}

# Fix Server

#' @rdname fix
#' @export
#' @keywords internal
#'
fix_server <- function(output, condition_name, condition){
  output[[condition_name]] <- condition
  outputOptions(output, condition_name, suspendWhenHidden = FALSE)
}