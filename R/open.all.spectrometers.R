#' Opens connections to all spectrometers
#' 
#' Opens connections to communicate with all Ocean Optics spectrometers
#' connected through USB and returns the number of spectrometers that can be
#' addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @keywords manip misc
#' @export
#' @return A numeric value giving the number of USB-connected spectrometers.
#'
open_all_spectrometers <- function(jwrapper){
  return(jwrapper$openAllSpectrometers())
}

#' @export
#' 
#' @rdname open_all_spectrometers
#' 
number_srs <- open_all_spectrometers