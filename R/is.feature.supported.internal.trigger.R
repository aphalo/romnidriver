#' Is feature "ìnternal trigger" supported?
#' 
#' Checks whether feature "ìnternal trigger" is available in the spectrometer
#' addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a logical? value
#'
is_feature_supported_internal_trigger <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedInternalTrigger(as.integer(sr.index))
}
