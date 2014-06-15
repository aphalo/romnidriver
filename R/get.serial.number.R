#' Get serial number of spectrometer
#' 
#' A function to query the serial number
#' from a spectrometer.
#' 
#' @usage get_serial_number(jwrapper, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @return a value
#' @export
#'
get_serial_number <- function(jwrapper, sr.index=0L){
  jwrapper$getSerialNumber(as.integer(sr.index))
}
