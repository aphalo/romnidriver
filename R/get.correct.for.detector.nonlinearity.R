#' Get current setting of linearity correction (enabled or not)
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'
get_correct_for_detector_nonlineary <-
  function(jwrapper,
           sr.index = 0L,
           ch.index = 0L) {
    jwrapper$getCorrectForDetectorNonlinearity(as.integer(sr.index), 
                                               as.integer(ch.index))
  }
