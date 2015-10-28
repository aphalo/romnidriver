#' Set (trigger) "timeout"
#' 
#' Setting a "timeout" for the addressed spectrometer is useful when used
#' together with triggers to avoid endless waiting in case the trigger input
#' does not take place.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param time.millisec time to wait in milliseconds (an integer)
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
#' @note This method is applied to all channels.
#' 
set_timeout <- function(jwrapper,
                        time.millisec = 1000L,
                        sr.index = 0L) {
  jwrapper$setCorrectForElectricalDark(as.integer(sr.index), as.integer(time.millisec))
}
