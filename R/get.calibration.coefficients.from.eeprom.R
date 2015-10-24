#' Get calibration coefficients from EEPROM
#' 
#' Function to query calibration coefficients from the EEPROM of a
#' spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return A \code{Coefficients} Java object containing all of the calibration
#'   coefficients..
#'   
#'   
get_calibration_coefficients_from_eeprom <- function(jwrapper, sr.index=0L, ch.index=NULL){
  if (is.null(ch.index)) {
    jwrapper$getCalibrationCoefficientsFromEEProm(as.integer(sr.index))
  } else {
    jwrapper$getCalibrationCoefficientsFromEEProm(as.integer(sr.index), as.integer(ch.index))
  }
}
