#' Get description of detector
#' 
#' @usage get_detector(jwrapper, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_detector <- function(jwrapper, sr.index=0L){
  jwrapper$getDetector(as.integer(sr.index))
}
