check_taglist <- function(x){
  check_inherits(x, "shiny.tag.list")
}

check_package_name <- function(package){
  check_string(package)
}