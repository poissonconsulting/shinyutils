#' Run the Shiny Application
#'
#' @export
run_app <- function() {
  shiny::runApp(system.file("app", package = "shinyutils"))
}
