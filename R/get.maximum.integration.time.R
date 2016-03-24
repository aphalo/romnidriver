#' Get maximum integration time
#' 
#' A function to query the maximum integration time that can be used
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @return maximum integration time setting, in units of microseconds.
#' @export
#'
get_maximum_integration_time <- function(jwrapper, sr.index = 0L) {
  jwrapper$getMaximumIntegrationTime(as.integer(sr.index))
}
