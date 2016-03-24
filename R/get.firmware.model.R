#' Get name of spectrometer
#' 
#' A function to query the version of the firmware from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @return A character string value of form "USB2000" or similar.
#' @note Only supported in API version >= 2.40, in earlier API versions an error
#'   is triggered if use is attempted.
#' 
#' @export
#'
get_firmware_model <- function(jwrapper, sr.index=0L){
  jwrapper$getFirmwareModel(as.integer(sr.index))
}
