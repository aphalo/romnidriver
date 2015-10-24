#' Is the most recent spectrum acquired saturated?
#' 
#' Checks whether the most recently acquired spectrum is saturated (= signal
#' clipping occured). 
#' 
#' @note Be aware that clipping outside the wavelength range of interest for 
#'   a given measuremt may not be important and can be ignored. This method
#'   tests for clipping at any pixel of the array.
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
