#' Feature "Irradiance Calibration Factor" 
#' 
#' Check whether feature "Irradiance Calibration Factor" is available
#' in the spectrometer addressed. Retrieve an interface that allows to query controller board
#' temperature. 
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a logical value
#'
is_feature_supported_irradiance_calibration_factor <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedIrradianceCalibrationFactor(as.integer(sr.index))
}

#' @rdname is_feature_supported_irradiance_calibration_factor
#' 
#' @note Before calling \code{get_feature_irradiance_calibration_factor} you first need to check that the feature
#'   is supported by the spectrometer in use by calling 
#'   \code{is_feature_supported_irradiance_calibration_factor}.
#' 
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
get_feature_irradiance_calibration_factor <-
  function(jwrapper, sr.index = 0L) {
    jwrapper$getFeatureControllerIrradianceCalibrationFactor(as.integer(sr.index))
  }

