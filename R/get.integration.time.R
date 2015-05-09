#' Get integration time
#' 
#' A function to query the integration time in use
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @return current integration time setting, in units of microseconds.
#' @export
#'
get_integration_time <- function(jwrapper, sr.index=0L){
  jwrapper$getIntegrationTime(as.integer(sr.index))
}
