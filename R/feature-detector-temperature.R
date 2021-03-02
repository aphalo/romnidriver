#' Feature "detector temperature"
#' 
#' Check whether feature "detector temperature" is available in the spectrometer
#' addressed. Construct a wrapper on the Java controller for the feature. Use a
#' wrapped controller to query the detector temperature.
#' 
#' @param jwrapper an open Wrapper object from OmniDriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a numeric value
#'
is_feature_supported_detector_temperature <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedDetectorTemperature(as.integer(sr.index))
}

#' @rdname is_feature_supported_detector_temperature
#' 
#' @note Before calling \code{get_feature_detector_temperature} you first need to check that the feature
#'   is supported by the spectrometer in use#' by calling
#'   \code{is_feature_supported_detector_temperature}.
#'   
#' @export
#' @return an object which provides the desired interface, or null if this 
#'   feature is not available for this spectrometer.
#'
get_feature_detector_temperature <-
  function(jwrapper, sr.index = 0L) {
    jwrapper$getFeatureDetectorTemperature(as.integer(sr.index))
  }

#' @rdname is_feature_supported_detector_temperature
#' 
#' @param dtr.wrapper an open detector wrapper object obtained with
#'   \code{get_feature_detector_temperature()}
#'
#' @export
#'
get_detector_temperature <- function(dtr.wrapper) {
  dtr.wrapper$getDetectorTemperatureCelsius()
}
