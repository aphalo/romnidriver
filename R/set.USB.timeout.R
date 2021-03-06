#' Set USB "timeout"
#' 
#' Setting a "timeout" for the addressed spectrometer is useful when used
#' together with triggers to avoid endless waiting. This function is supported
#' only by USB spectrometers. A time of 0L disables the timeout.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param time.millisec time to wait in milliseconds (an integer)
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a numeric value
#'
#' @note This method is applied to all channels.
#' 
set_USB_timeout <- function(jwrapper,
                        time.millisec = 1000L,
                        sr.index = 0L) {
  jwrapper$setUSBTimeout(as.integer(sr.index), as.integer(time.millisec))
}
