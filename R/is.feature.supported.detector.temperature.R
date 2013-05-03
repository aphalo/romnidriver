#' Checks whether feature "detector temperature" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
is.feature.supported.detector.temperature <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedDetectorTemperature(as.integer(sr.index))
}
