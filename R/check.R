check_taglist <- function(x){
  chk_s3_class(x, "shiny.tag.list")
}

check_package_name <- function(package){
  chk_string(package)
}