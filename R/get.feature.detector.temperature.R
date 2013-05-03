#' Get feature "detector temperature"
#' Before calling this function you first need to check that the feature is supported
#' by the spectrometer in use.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
get.feature.detector.board.temperature <- function(jwrapper, sr.index=0L){
  jwrapper$getFeatureDetectorTemperature(as.integer(sr.index))
}
