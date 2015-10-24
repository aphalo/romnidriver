#' Get integration time
#' 
#' A function to query the integration time in use
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @return current integration time setting, in units of microseconds.
#' @export
#'
get_integration_time <- function(jwrapper, sr.index=0L, ch.index=NULL){
  if (is.null(ch.index)) {
    jwrapper$getIntegrationTime(as.integer(sr.index))
  } else {
    jwrapper$getIntegrationTime(as.integer(sr.index), as.integer(ch.index))
  }
}
