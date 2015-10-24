#' Is feature "detector temperature" supported?
#' 
#' Checks whether feature "detector temperature" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_feature_supported_detector_temperature <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedDetectorTemperature(as.integer(sr.index))
}
