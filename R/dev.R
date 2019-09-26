#' Prepare package to run app during development
#'
#' @return TRUE
#' @export
dev_prep <- function(){
  rm(list=ls(all.names = TRUE, envir = globalenv()), envir = globalenv())
  all_attached <- paste("package:", names(sessionInfo()$otherPkgs), 
                        sep = "")
  try(suppressWarnings(lapply(all_attached, detach, character.only = TRUE, 
                              unload = TRUE)), silent = TRUE)
  invisible(TRUE)
}