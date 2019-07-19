#' Navbar css
#'
#' @param text_color A character string of navbar text color.
#' @param text_selected_color A character string of selected navbar text color.
#' @param text_size A character string of navbar text size.
#' @param background_color A character string of navbar background color.
#' @param float A character string indicating position of tabs in navbar ('left', 'right' or 'center')
#' @return a shiny tag.
#' @export
css_navbar <- function(text_color = "#E0E0E0", text_selected_color = "#37CBA2",
                       text_size = "15px",
                       background_color = "#010101", float = "right"){
  css_add(glue("
.navbar .navbar-nav {{float: {float};
}}

.navbar-header {{
  padding: 0px 20px 0px 30px;
}}

.navbar.navbar-default.navbar-static-top{{
  padding:0;
  margin-bottom: 0px;
  background: rgba(16,16,16, 0.85);
}}
.navbar-default {{
    box-shadow: 0 4px 4px -2px rgba(0,0,0,.2);
}}
.navbar-default {{
  background-color: {background_color};
  border-color: transparent;
  font-size: {text_size};
}}
.navbar-default .navbar-brand {{
  color: {text_color};
}}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {{
  color: {text_color};
  background-color: transparent;
}}
.navbar-default .navbar-text {{
  color: {text_color};
  font-size: 20px !important;
}}
.navbar-default .navbar-nav > li > a {{
  color:  {text_color};
}}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {{
  color: {text_selected_color};
  background-color: transparent;
}}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {{
  color: {text_selected_color};
  background-color: transparent;
}}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {{
  color: {background_color};
  background-color: transparent;
}}
.navbar-default .navbar-toggle {{
  border-color: {background_color};
}}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {{
  background-color: {text_selected_color};
}}
.navbar-default .navbar-toggle .icon-bar {{
  background-color: {text_color};
}}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {{
  border-color: transparent;
}}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {{
  background-color: {background_color};
  color:{text_selected_color};
}}
@media (max-width: 767px) {{
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {{
    color: {text_color};
  }}
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {{
    color: {background_color};
    background-color: transparent;
  }}
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {{
    color: {text_color};
    background-color: {background_color};
  }}
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {{
    color: #cccccc;
    background-color: transparent;
  }}
}}
.navbar-default .btn-link {{
  color: {text_color};
}}

"))
}

#' Slider css
#'
#' @param slider_color A character string of slider color.
#' @param background_color A character string of slider background color.
#' @return a shiny tag.
#' @export
css_slider <- function(slider_color = "#494949", 
                       background_color = "#101010"){
  css_add(glue("
.irs-bar {{
  width: 100%; height: 5px; background:{background_color};
  border: 1px solid {background_color};
}}
.irs-bar-edge {{
  background:{background_color}; 
  height: 5px;
  border: 1px solid {background_color};
}}
.irs-line {{height: 5px; border: 0.1px solid {background_color};}}
.irs-grid-text {{display: none;}}
.irs-grid-pol {{display: none;}}
.irs-max {{color: {slider_color}; background: transparent;}}
.irs-min {{color: {slider_color}; background: transparent;}}
.irs-single {{color: white; background: {slider_color}; text-size: 20px;}}
.irs-from {{color: {slider_color}; background: transparent;}}
.irs-to {{color: {slider_color}; background: transparent;}}
.irs-slider {{width: 15px; height: 15px; top: 20px;}}
"))
}

#' Body css
#'
#' @param font_family A character string of body font family.
#' @param font_weight A character string of body font weight.
#' @param font_size_body A character string of body font size.
#' @param font_size_label A character string of label font size.
#' @param text_color A character string of body text color.
#' @return a shiny tag.
#' @export
css_body <- function(font_family = "Myriad-Pro, Calibri, Arial, 'sans serif'", 
                       font_weight = "100",
                       font_size_body = "10px",
                     font_size_label = "13px",
                     text_color = "#494949"){
  css_add(glue("
body, label, input, button, select {{ 
  font-family: {font_family};
  font-weight: {font_weight};
  color: {text_color};
    font-size: {font_size_body};
}}
label {{
    font-size: {font_size_label};
}}
h1, h2, h3, h4 {{font-weight: {font_weight};}}
button {{background-color: #999999;}}
"))
}

#' Hide error css
#'
#' @return a shiny tag.
#' @export
css_hide_errors <- function(){
  css_add(glue("
.shiny-output-error {{ visibility: hidden; }}
.shiny-output-error:before {{ visibility: hidden;}}
"))
}

#' Leaflet full screen
#'
#' @return a shiny tag.
#' @export
css_leaflet_full <- function(){
  css_add(glue("
.leaflet {{height: calc(100vh) !important;}}
.leaflet-control-layers {{margin-top: 60px !important;}}
"))
}
