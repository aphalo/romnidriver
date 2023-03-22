#' Get optical properties of optical bench
#' 
#' A function to query the characteristics of the optical bench
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @return a value
#' @export
#'
get_bench <- function(jwrapper,
                      sr.index = 0L,
                      ch.index = 0L) {
  if ("getBench(" %in% names(jwrapper)) {
    # function removed in OmniDriver 2.7
    jwrapper$getBench(as.integer(sr.index), as.integer(ch.index))
  } else {
    NA
  }
}
