#' Get feature "pixel binning"
#' Before calling this function you first need to check that the feature is supported
#' by the spectrometer in use.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_feature_pixel_binning <- function(jwrapper, sr.index=0L){
  jwrapper$getFeaturePixelBinning(as.integer(sr.index))
}
