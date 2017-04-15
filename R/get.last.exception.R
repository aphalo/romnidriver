#' Get OmniDriver last exception
#' 
#' A function to retrieve the most recent Java exception triggered by OmniDrive 
#' as a character string.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#'   
#' @return A character string String with a description of the most recent error
#'   exception, or "no exception" if no error has been encountered..
#' @export
#' 
get_last_exception <- function(jwrapper){
  jwrapper$getLastException()
}

