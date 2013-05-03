#' Get feature "pixel binning"
#' Before calling this function you first need to check that the feature is supported
#' by the spectrometer in use.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
get.feature.pixel.binning <- function(jwrapper, sr.index=0L){
  jwrapper$getFeaturePixelBinning(as.integer(sr.index))
}
