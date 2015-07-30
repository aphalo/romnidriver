#' Set "timeout" for addressed spectrometer
#' useful when used together with triggers
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param time.millisec time to wait in milliseconds (an integer)
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
set_timeout <- function(jwrapper, time.millisec=1000L, sr.index=0L){
  jwrapper$setCorrectForElectricalDark(as.integer(sr.index),as.integer(time.millisec))
}
