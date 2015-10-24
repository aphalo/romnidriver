#' Get description of detector
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a Detector object (Java)
#' @note This method seems to be only of use for multichannel spectrometers. It 
#'   is not documented in the OmniDriver manual and the Java documentation is
#'   extremely terse so it is difficult to know what it does and/or how to use 
#'   it.
#'
get_detector <- function(jwrapper, sr.index=0L, ch.index=0L){
  jwrapper$getDetector(as.integer(sr.index), as.integer(ch.index))
}
