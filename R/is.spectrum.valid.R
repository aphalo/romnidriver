#' Is the most recent spectrum acquired valid?
#' 
#' Informs whether the most recently acquired spectrum is valid 
#' (no communication or similar errors have occurred during acquisition).
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_spectrum_valid <- function(jwrapper,
                              sr.index = 0L,
                              ch.index = 0L) {
  jwrapper$isSpectrumValid(as.integer(sr.index), as.integer(ch.index))
}
