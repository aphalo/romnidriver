#' Get wavelengths from spectrometer
#' 
#' Function to get wavelengths corresponding to the pixels in the CCD array.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @export
#' @return A numeric (double) vector with the calculated wavelength at each pixel. 
#'   
#'   
get_wavelengths <- function(jwrapper,
                            sr.index = 0L,
                            ch.index = 0L) {
  jwrapper$getWavelengths(as.integer(sr.index), as.integer(ch.index))
}
