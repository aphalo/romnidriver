#' Get feature "controller board temperature"
#' Before calling this function you first need to check that the feature is supported
#' by the spectrometer in use.
#' 
#' @usage get_feature_controller_board_temperature(jwrapper, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_feature_controller_board_temperature <- function(jwrapper, sr.index=0L){
  jwrapper$getFeatureControllerBoardTemperature(as.integer(sr.index))
}
