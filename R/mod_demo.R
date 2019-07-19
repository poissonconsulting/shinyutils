# Module UI
  
#' @title   mod_demo_ui and mod_demo_server
#' @description  A shiny Module.
#'
#' @param id shiny id
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_demo
#'
#' @keywords internal
#' @importFrom shiny NS tagList 
mod_demo_ui <- function(id){
  ns <- NS(id)
  tagList(
    wellPanel(
      tags$cite("info('info', label = 'need help?',
           help = 'here's some help', ns = ns)", style = "font-size: 15px;"),
      br(),
      br(),
        info("info", label = "need help?",
             help = "here's some help", ns = ns)
    ),
    br(),
    wellPanel(
      tags$cite("select_input_x('select', label = 'Dropdown with x', 
                choices = c('one', 'another'))", style = "font-size: 15px;"),
      br(),
      br(),
      select_input_x('select', label = "Dropdown with x", choices = c("one", "another"))
    )
    # wellPanel(
    #   tags$cite("fix('fix', fix = 'cannot say hi!', condition = 'input.text == 'hi'", 
    #             style = "font-size: 15px;"),
    #   br(), br(),
    #   textInput(ns("text"), label = NULL, placeholder = "type hi"),
    #   fix_ui(fix = 'cannot say hi!', condition_name = "check_hi", ns = ns)
    # )
  )
}
    
# Module Server
    
#' @rdname mod_demo
#' @keywords internal
    
mod_demo_server <- function(input, output, session){
  ns <- session$ns
}
 
