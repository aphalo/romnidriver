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
  if ("isFeatureSupportedSpectrumType(" %in% names(jwrapper)) {
    # function removed in OmniDriver >= 2.70
    jwrapper$isFeatureSupportedSpectrumType(as.integer(sr.index))
  } else {
    NA
  }
}

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
#'  
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
get_feature_spectrum_type <- function(jwrapper, sr.index = 0L) {
  jwrapper$getFeatureControllerSpectrumType(as.integer(sr.index))
}

#' Set "spectrum type"
#' 
#' Set the spectrum type to one of normal  or raw.
#' 
#' @param spct.type.wrapper feature wrapper as returned by function
#'   \code{rOmniDriver::get_feature_controller_internal_trigger}
#' @param spct.type character, "normal" or "raw" or interger, 0 or 1.
#' 
#' @return logical TRUE = success, FALSE = failure.
#' 
set_spectrum_type <- function(spct.type.wrapper, spct.type = "normal") {
  spct.types <- c("normal", "raw")
  if (is.character(spct.type)) {
    spct.type <- which(spct.types == tolower(spct.type)) - 1
  } else {
    source <- as.integer(source)
  }
  if (is.null(source) || is.na(source) || source > 1L || source < 0L) {
    warning("Error is 'source' argument, skipping!")
    FALSE
  } else {
    spct.type.wrapper$setSpectrumType(spectrumType = spct.type)
    TRUE
  }
} 

