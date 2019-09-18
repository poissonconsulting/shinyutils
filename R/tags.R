#' p tag and font size
#'
#' @param x A character string .
#' @param font_size A character string of the font size.
#' @return a shiny tag.
#' @export
p_size <- function(x, font_size = "13px"){
  tags$p(x, style = glue("font-size: {font_size};"))
}

#' label tag and font size
#'
#' @param x A character string .
#' @param font_size A character string of the font size.
#' @return a shiny tag.
#' @export
label_size <- function(x, font_size = "13px"){
  tags$label(x, style = glue("font-size: {font_size};"))
}

#' text for signalling something should be fixed
#'
#' @param x A character string .
#' @param font_size A character string of the font size.
#' @return a shiny tag.
#' @export
fix_text <- function(x, font_size = "13px"){
  tags$p(glue("*{x}"), style = glue("color: red; font-size: {font_size};"))
}

#' help tag and font size
#'
#' @param x A character string .
#' @param font_size A character string of the font size.
#' @return a shiny tag.
#' @export
help_size <- function(x, font_size = "13px"){
  helpText(x, style = glue("font-size: {font_size};"))
}

#' buttons with status
#'
#' @param id A character string of the shiny id.
#' @param label A characer string of the label.
#' @param icon A character string of the icon.
#' @param status A character string of the status.
#' @return a shiny tag.
#' @export
button <- function(id, label, icon, status){
  chk_string(id)
  chk_string(label)
  chk_string(icon)
  chk_subset(status, c("success", "primary", "secondary",
                         "danger", "info", "warning", 
                         "light", "dark"))
  tags$button(id = id, 
              type = "button", 
              class = glue("btn action-button btn-large btn-{status}"), 
              HTML(as.character(icon(icon)), label))
}