#' Get feature "controller board temperature"
#' 
#' A function to retrieve an interface that allows to query controller board
#' temperature. 
#' 
#' @note Before calling this function you first need to check that the feature
#'   is supported by the spectrometer in use by calling 
#'   \code{\link{is_feature_supported_board_temperature}}.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
get_feature_controller_board_temperature <-
  function(jwrapper, sr.index = 0L) {
    jwrapper$getFeatureControllerBoardTemperature(as.integer(sr.index))
  }
