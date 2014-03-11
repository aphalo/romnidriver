#' Get current setting for electrical dark correction
#' 
#' @usage get_correct_for_electrical_dark(jwrapper, sr.index=0L)
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_correct_for_electrical_dark <- function(jwrapper, sr.index=0L){
  jwrapper$getCorrectForElectricalDark(as.integer(sr.index))
}
