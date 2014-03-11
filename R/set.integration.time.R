#' Set "integration time" for addressed spectrometer
#' 
#' @usage set_integration_time(jwrapper, time.usec=100L, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param time.usec integartion time in microseconds (an integer)
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
set_integration_time <- function(jwrapper, time.usec=100L, sr.index=0L){
  jwrapper$setIntegrationTime(as.integer(sr.index), as.integer(time.usec))
}