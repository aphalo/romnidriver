#' Checks whether the last operation has timed out
#' 
#' Checks whether the last operation has timed out. This is useful when working
#' with triggers and signals used for triggering that may fail or be delayed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_timeout <- function(jwrapper, sr.index=0L, ch.index=NULL){
  if (is.null(ch.index)) {
    jwrapper$isTimeout(as.integer(sr.index))
  } else {
    jwrapper$isTimeout(as.integer(sr.index), as.integer(ch.index))
  }
}
