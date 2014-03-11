#' Returns the number of spectrometers attached to the computer
#' It is the number of spectrometers that can be addressed
#' 
#' @usage number_srs(jwrapper)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
number_srs <- function(jwrapper){
  return(jwrapper$openAllSpectrometers())
}