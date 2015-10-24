#' Informs whether the last spectrum acquired is valid 
#' 
#' Informs whether the last spectrum acquired is valid 
#' (= no errors have occurred during acquisition).
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_spectrum_valid <- function(jwrapper, sr.index=0L, ch.index=NULL){
  if (is.null(ch.index)) {
    jwrapper$isSpectrumValid(as.integer(sr.index))
  } else {
    jwrapper$isSpectrumValid(as.integer(sr.index), as.integer(ch.index))
  }
}
