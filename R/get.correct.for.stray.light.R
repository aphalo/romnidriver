#' Get current setting of stray light correction
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel 
#' @export
#'
get_correct_for_stray_light <- function(jwrapper, sr.index = 0L, ch.index=0L) {
  jwrapper$getCorrectForStrayLight(as.integer(sr.index), as.integer(ch.index))
}
