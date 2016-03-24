#' close all open connections to spectrometers
#' 
#' @param jwrapper a open Wrapper object from Omnidriver
#'  
#' @export
#' @return a numeric value
#'
close_all_spectrometers <- function(jwrapper) {
  jwrapper$closeAllSpectrometers()
}

#' @export
#' 
#' @rdname close_all_spectrometers
#'
srs_close <- close_all_spectrometers