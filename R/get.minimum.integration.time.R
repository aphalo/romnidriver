#' Get minimum integration time
#' 
#' A function to query the minimum integration time that can be used
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @return minimum integration time setting, in units of microseconds.
#' @export
#'
get_minimum_integration_time <- function(jwrapper, sr.index = 0L) {
  jwrapper$getMinimumIntegrationTime(as.integer(sr.index))
}
