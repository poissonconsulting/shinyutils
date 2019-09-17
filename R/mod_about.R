# About module UI

#' @title   mod_about_ui and mod_about_server
#' @description  A shiny Module to generate About tab.
#'
#' @param id A character string of the shiny id.
#' @param package A character string of the package name.
#' @param header A taglist containing ui elements for the upper body.
#' @param citation A taglist containing ui elements for the citation.
#' @param footer A taglist containing ui elements for the lower body.
#' @param input internal
#' @param output internal
#' @param session internal
#'
#' @rdname mod_about
#'
#' @keywords internal
#' @export
mod_about_ui <- function(id, package = "shinyutils", header = poisson_header(package), 
                         citation = poisson_citation(package),
                         footer = poisson_footer(), ...){
  ns <- NS(id)
  
  chk_string(id)
  check_taglist(header)
  check_taglist(citation)
  check_taglist(footer)
  
  tagList(
    header,
    br(),
    citation,
    hr(),
    footer
  )
}

# Module Server

#' @rdname mod_about
#' @export
#' @keywords internal

mod_about_server <- function(input, output, session){
  ns <- session$ns
}


#' Poisson header
#'
#' Generate UI for upper part of About tab body
#'
#' @param package A character string of the package name.
#'
#' @return a shiny taglist.
#' @export
poisson_header <- function(package = "shinyutils"){
  check_package_name(package)
  body <- h6("For more information see the ", repo_ref(package), "GitHub page.")
  tagList(h4("Welcome!"),
          br(),
          body)
}

#' Poisson package citation
#'
#' Generate UI for upper part of About tab body
#'
#' @param package A character string of the package name.
#'
#' @return a shiny taglist.
#' @export
poisson_citation <- function(package = "shinyutils"){
  check_package_name(package)
  cit <- format_citation(package)
  if(length(cit) > 0){
    return(tagList(
      h6("Citation:"),
      tags$cite(cit)
    ))
  }
  invisible(tagList())
}

#' Poisson footer
#'
#' Generate UI for lower part of About tab body
#'
#' @return a shiny taglist.
#' @export
poisson_footer <- function(){
  tagList(
    h6("Developed by", a("Poisson Consulting Ltd.", 
                         href = glue('http://www.poissonconsulting.ca'))),
    tags$footer(img(src = 'https://www.poissonconsulting.ca/img/poisson.png',
                    height = 177/5,
                    width = 739/5),
              style = "position: relative;
                bottom:1;
                width:100%;
                height:50px; /* Height of the footer */
                color: #2f4f4f;
                padding: 10px;
                background-color: white;
                z-index: -1000;
                font-size: 12px"))
}

