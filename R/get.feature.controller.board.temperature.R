#' Get feature "controller board temperature"
#' Before calling this function you first need to check that the feature is supported
#' by the spectrometer in use.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
get_feature_controller_board_temperature <- function(jwrapper, sr.index=0L){
  jwrapper$getFeatureControllerBoardTemperature(as.integer(sr.index))
}
