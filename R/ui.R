#' Value box font size
#'
#' @param subtitle A character string of the subtitle.
#' @param value A character string of the value.
#' @param color A character string of the color.
#' @param font_size A character string of the font size.
#' @param ... arguments passed to valueBox

#' @return a shiny tag.
#' @export
value_box <- function(subtitle, value, color = "green", font_size = "70%", ...){
  valueBox(subtitle = p_size(subtitle, font_size), 
           color = color, 
           value = p_size(value, font_size), ...)
}

#' Select input with x
#'
#' @param id A character string of the shiny id.
#' @param label A characer string of the label.
#' @param choices A vector of characer strings of choices.
#' @param selected A characer string of the initial selected choice.
#' @param ... arguments passed to selectizeInput
#' @return a shiny tag.
#' @export
select_input_x <- function(id, label = "Select sites:", choices, 
                           selected = choices[1], ...) {
  selectizeInput(inputId = id, 
                 multiple = TRUE,
                 label = label,
                 choices = choices,
                 selected = selected,
                 options = list(
                   'plugins' = list('remove_button'),
                   'create' = TRUE,
                   'persist' = FALSE), ...)
}

#' Info text appear when icon clicked
#'
#' @param id A character string of the shiny id.
#' @param label A character string of the package name.
#' @param help A taglist containing ui elements for the upper body.
#' @param label_size A character string of the label font size.
#' @param help_size A character string of the help font size.
#' @param icon_size A character string of the icon size.
#' @param ns A function of the namespace.
#' @param ... arguments passed to actionLink
#' @return a shiny taglist
#'
#' @export
info <- function(id, label, help, label_size = "15px", 
                 help_size = "12px", icon_size = "15px",
                 ns = NS(NULL), ...){
  check_string(id)
  check_string(label)
  check_string(help)
  check_function(ns)
  
  tagList(
    inline(label_size(label, label_size)),
    inline(actionLink(ns(id), icon = icon("info-circle"), label = NULL,
                      style = glue("font-size: {icon_size};"), ...)),
    conditionalPanel(
      condition = glue("input.{id} % 2 == 1"),
      help_size(help, help_size), ns = ns
    )
  )
}


