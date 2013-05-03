#' Checks whether feature "pixel binning" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
is.feature.supported.pixel.binning <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedPixelBinning(as.integer(sr.index))
}
