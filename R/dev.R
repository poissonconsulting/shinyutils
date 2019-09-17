#' Prepare package to run app during development
#'
#' @param rm_all A flag indicating whether to remove objects from Global environment.
#' @param detach_all A flag indicating whether to detach packages.
#' @return TRUE
#' @export
dev_prep <- function(rm_all = TRUE, detach_all = TRUE){
  chk_flag(rm_all)
  chk_flag(detach_all)
  
  if(rm_all){
    rm(list=ls(all.names = TRUE))
  }
  if(detach_all){
    all_attached <- paste("package:", names(utils::sessionInfo()$otherPkgs))
    try(suppressWarnings(lapply(all_attached, detach, character.only = TRUE,
                                unload = TRUE)), silent = TRUE)
  }
  TRUE
}