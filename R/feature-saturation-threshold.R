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

#' Get feature "saturation threshold"
#' 
#' A function to retrieve an interface that allows to control the saturation
#' threshold.
#' 
#' @note Before calling this function you first need to check that the feature 
#'   is supported by the spectrometer in use by calling 
#'   \code{\link{is_feature_supported_saturation_threshold}}.
#'   
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#'   
#' @export
#' @return an object which provides the desired interface, or null if this 
#'   feature is not available for this spectrometer.
#'   
get_feature_controller_saturation_threshold <-
  function(jwrapper, sr.index = 0L) {
    jwrapper$getFeatureControllerSaturationThreshold(as.integer(sr.index))
  }

