#' Checks whether the last spectrum acquired is saturated (= clipped).
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_saturated <- function(jwrapper, sr.index=0L, ch.index=NULL){
  if (is.null(ch.index)) {
    jwrapper$isSaturated(as.integer(sr.index))
  } else {
    jwrapper$isSaturated(as.integer(sr.index), as.integer(ch.index))
  }
}
