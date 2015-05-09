#' close all open connections to spectrometers
#' 
#' @param jwrapper a open Wrapper object from Omnidriver
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
srs_close <- function(jwrapper){
  jwrapper$closeAllSpectrometers()
}