#' Get description of detector
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
get.detector <- function(jwrapper, sr.index=0L){
  jwrapper$getDetector(as.integer(sr.index))
}
