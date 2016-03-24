#' Get OmniDriver wrapper extensions
#' 
#' A function to query enable the WrapperExtensions class.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#'  
#' @return A character string value of form "1.01.01" or similar.
#' @export
#'
get_wrapper_extensions <- function(jwrapper){
  jwrapper$getWrapperExtensions()
}