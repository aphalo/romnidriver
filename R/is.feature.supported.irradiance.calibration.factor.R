#' Is feature "Irradiance Calibration Factor" supported?
#' 
#' Checks whether feature "Irradiance Calibration Factor" is available
#' in the spectrometer addressed.
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
