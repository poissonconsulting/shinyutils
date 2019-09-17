app_ui <- function() {
  tagList(
    # golem_add_external_resources(),
    css_navbar(),
    css_body(),
    navbarPage(title =  "shinyutils", selected = 'Demo',
               tabPanel(title = 'About',
                        br(),
                        mod_about_ui("about_ui_1")
               ),
               tabPanel(title = 'Demo',
                        br(),
                        mod_demo_ui("demo_ui_1")
               ))
  )
}

golem_add_external_resources <- function(){
  addResourcePath( 'www', system.file('app/www', package = 'shinyrems'))
  tagList(tags$link(rel="stylesheet", type="text/css"))
}
