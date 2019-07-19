err <- function (...) stop(..., call. = FALSE, domain = NA)

repo_ref <- function(package){
  tags$a(package, href = glue('https://github.com/poissonconsulting/{package}'))
}

format_citation <- function(package){
  format(citation(package = package), "text")
}

#' Add custom css
#'
#' @param x A character string of css.
#' @return a shiny tag.
#' @export
css_add <- function(x){
  tags$head(tags$style(HTML(x)))
}

#' Add inline css
#'
#' @param x A shiny tag UI element.
#' @return a shiny tag.
#' @export
inline <- function(x){
  div(style="display: inline-block;vertical-align:top;", x)
}