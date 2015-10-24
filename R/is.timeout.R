#' Checks whether the last operation has timed out
#' Usefull when using triggers
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
