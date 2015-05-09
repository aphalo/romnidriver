#' Set setting "correct for detector nonlinearity" (the number of pixels averaged)
#' for addressed spectrometer
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param correct 0: no, 1: yes
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
set_correct_for_detector_nonlinearity <- function(jwrapper, correct=0L, sr.index=0L){
  jwrapper$setCorrectForDetectorNonlinearity(as.integer(sr.index),as.integer(correct))
}
