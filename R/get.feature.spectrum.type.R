#' Get feature "spectrum type"
#' 
#' Get a wrapper for accesing this optional feature.
#' 
#' @note Before calling this function you first need to check that the feature
#'   is supported by the spectrometer in use by calling
#'   \code{\link{is_feature_supported_spectrum_type}}.
#'   
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @keywords manip misc
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
get_feature_spectrum_type <- function(jwrapper, sr.index = 0L) {
  jwrapper$getFeatureControllerSpectrumType(as.integer(sr.index))
}
