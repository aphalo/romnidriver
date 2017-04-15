#' Feature "controller board temperature"
#' 
#' Check whether feature "controller board temperature" is available
#' in the spectrometer addressed. Gets the controller and queries the
#' temperature.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a numeric value
#'
is_feature_supported_board_temperature <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedBoardTemperature(as.integer(sr.index))
}

#' @rdname is_feature_supported_board_temperature
#' 
#' @note Before calling \code{get_feature_controller_board_temperature} you f
#'  irst need to check that the feature
#'   is supported by the spectrometer in use by calling 
#'   \code{is_feature_supported_board_temperature}.
#' 
#' @export
#' 
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
get_feature_controller_board_temperature <-
  function(jwrapper, sr.index = 0L) {
    jwrapper$getFeatureControllerBoardTemperature(as.integer(sr.index))
  }

#' @rdname is_feature_supported_board_temperature
#' 
#' @param brd.wrapper an open controller wrapper object obtained with
#'   \code{get_feature_controller_board_temperature()}
#'
#' @export
#'
get_board_temperature <- function(brd.wrapper) {
  brd.wrapper$getBoardTemperatureCelsius()
}
