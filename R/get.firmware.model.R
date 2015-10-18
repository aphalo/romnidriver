#' Get name of spectrometer
#' 
#' A function to query the version of the firmware from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @return A character string value of form "USB2000" or similar.
#' @export
#'
get_firmware_model <- function(jwrapper, sr.index=0L){
  jwrapper$getFirmwareModel(as.integer(sr.index))
}
