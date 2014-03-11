#' Get current setting of linearity correction (enabled or not)
#' 
#' @usage get_correct_for_detector_nonlineary(jwrapper, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_correct_for_detector_nonlineary <- function(jwrapper, sr.index=0L){
  jwrapper$getCorrectForDetectorNonlinearity(as.integer(sr.index))
}
