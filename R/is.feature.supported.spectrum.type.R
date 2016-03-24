#' Is feature "spectrum type" supported?
#' 
#' Checks whether feature "spectrum type" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a logical value
#'
is_feature_supported_spectrum_type <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedSpectrumType(as.integer(sr.index))
}
