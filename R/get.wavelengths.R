#' Get calibration coefficients from EEPROM
#' 
#' Function to wavelengths corresponding to the pixels in the CCD array.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @keywords manip misc
#' @export
#' @return A numeric (double) vector with the calculated wavelength at each pixel. 
#'   
#'   
get_wavelengths <- function(jwrapper, sr.index=0L){
  jwrapper$getWavelengths(as.integer(sr.index))
}
