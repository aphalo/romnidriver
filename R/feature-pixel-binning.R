#' Is feature "pixel binning" supported?
#' 
#' Checks whether feature "pixel binning" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a numeric value
#'
is_feature_supported_pixel_binning <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedPixelBinning(as.integer(sr.index))
}

#' Get feature "pixel binning"
#' 
#' Obtain an inferface to the "pixel binning" function of a spectrometer if
#' available.
#' 
#' @note Before calling this function you first need to check that the feature
#'   is supported by the spectrometer in use by calling 
#'   \code{\link{is_feature_supported_pixel_binning}}.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'
get_feature_pixel_binning <- function(jwrapper, sr.index = 0L) {
  jwrapper$getFeaturePixelBinning(as.integer(sr.index))
}
