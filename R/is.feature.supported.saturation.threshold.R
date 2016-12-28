#' Is feature "saturation threshold" supported?
#' 
#' Checks whether feature "saturation threshold" is available in the
#' spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a logical? value
#'
is_feature_supported_saturation_threshold <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedSaturationThreshold(as.integer(sr.index))
}
