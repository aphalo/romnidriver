#' Feature "Irradiance Calibration Factor" 
#' 
#' Check whether feature "Irradiance Calibration Factor" is available in the
#' spectrometer addressed. Construct a wrapper on the Java controller for the
#' feature. Use a wrapped controller to retrieve the calibration factors.
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
#' @note Before calling \code{get_feature_irradiance_calibration_factor} you
#'   first need to check that the feature is supported by the spectrometer in
#'   use by calling \code{is_feature_supported_irradiance_calibration_factor}.
#' 
#' @export
#' @return A wrapper on a Java object which provides the interface, or null if
#'   this feature is not available for this spectrometer.
#'   
get_feature_irradiance_calibration_factor <-
  function(jwrapper, sr.index = 0L) {
    jwrapper$getFeatureControllerIrradianceCalibrationFactor(as.integer(sr.index))
  }

#' @rdname is_feature_supported_irradiance_calibration_factor
#' 
#' @param irrad.cal.wrapper An open wrapper for the feature object.
#' 
#' @export
#' @return A numeric vector of calibration factors, as returned by the
#'   spectrometer.
#'   
#' @note An attempt to retrieve calibration factors may fail and not return
#'   unless a USB timeout is set with function \code{set_USB_timeout()}.
#' 
get_irradiance_calibration_factors <- function(irrad.cal.wrapper) {
  irrad.cal.wrapper$getIrradianceCalibrationFactors()
}
