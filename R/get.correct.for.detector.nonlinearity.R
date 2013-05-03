#' Get current setting of linearity correction (enabled or not)
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
get.correct.for.detector.nonlineary <- function(jwrapper, sr.index=0L){
  jwrapper$getCorrectForDetectorNonlinearity(as.integer(sr.index))
}
