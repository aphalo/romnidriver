#' Checks whether feature "pixel binning" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_feature_supported_pixel_binning <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedPixelBinning(as.integer(sr.index))
}
