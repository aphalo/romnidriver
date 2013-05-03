#' Returns the number of spectrometers attach to the computer
#' It is the number of spectrometers that can be addressed
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @export
#'
number.srs <- function(jwrapper){
  return(jwrapper$openAllSpectrometers())
}