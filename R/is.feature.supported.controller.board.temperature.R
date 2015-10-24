#' Is feature "controller board temperature" supported?
#' 
#' Checks whether feature "controller board temperature" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_feature_supported_board_temperature <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedBoardTemperature(as.integer(sr.index))
}
