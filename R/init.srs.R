#' Initialize the connection to all currently connected
#' spectrometers
#' 
#' This creates a Wrapper object using Omnidriver
#' This object is later used by all other functions to access the spectrometers
#' 
#' You should call this function only once
#' And cleanup by use of \code{close.srs} before exiting
#' 
#' @usage init_srs()
#' @keywords manip misc
#' @export
#' @return a wrapper
#'
init_srs <- function(){
  return(.jnew("com/oceanoptics/omnidriver/api/wrapper/Wrapper"))
}