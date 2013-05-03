#' Set "integration time" for addressed spectrometer
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param time.usec integartion time in microseconds (an integer)
#' @param sr.index an index to address the spectrometer 
#' @export
#'
set.integration.time <- function(jwrapper, time.usec=100L, sr.index=0L){
  jwrapper$setIntegrationTime(as.integer(sr.index), as.integer(time.usec))
}