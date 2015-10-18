#' Get spectrometer firmware version
#' 
#' A function to query the version of the firmware from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @return A character string value of form "1.01.01" or similar.
#' @export
#'
get_firmware_version <- function(jwrapper, sr.index=0L){
  jwrapper$getFirmwareVersion(as.integer(sr.index))
}
