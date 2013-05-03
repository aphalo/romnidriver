#' close all open connections to spectrometers
#' 
#' @param jwrapper a open Wrapper object from Omnidriver
#' @export
#'
srs.close <- function(jwrapper){
  jwrapper$closeAllSpectrometers()
}