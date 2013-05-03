#' Checks whether feature "controller board temperature" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
is.feature.supported.controller.board.temperature <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedControllerBoardTemperature(as.integer(sr.index))
}
