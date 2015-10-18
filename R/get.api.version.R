#' Get OmniDriver API version
#' 
#' A function to query the version of OmniDriver.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @keywords manip misc
#' @return A character string value of form "1.01.01" or similar.
#' @export
#'
get_api_version <- function(jwrapper){
  jwrapper$getApiVersion()
}