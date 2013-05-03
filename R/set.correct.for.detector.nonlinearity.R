#' Set setting "correct for detector nonlinearity" (the number of pixels averaged)
#' for addressed spectrometer
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param correct 0: no, 1: yes
#' @param sr.index an index to address the spectrometer 
#' @export
#'
set.correct.for.detector.nonlinearity <- function(jwrapper, correct=0L, sr.index=0L){
  jwrapper$setCorrectForDetectorNonlinearity(as.integer(sr.index),as.integer(correct))
}
