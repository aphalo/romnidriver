#' Get description of detector
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address a channel
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#' @note This method is only of use for multichannel spectrometers.
#'
get_detector <- function(jwrapper, sr.index=0L, ch.index=NULL){
  if (is.null(ch.index)) {
    jwrapper$getDetector(as.integer(sr.index), 0L)
  } else {
    jwrapper$getDetector(as.integer(sr.index), as.integer(ch.index))
  }
}
