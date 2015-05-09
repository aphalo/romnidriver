#' Set setting "correct for electrical dark signal"
#' for addressed spectrometer
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param enable 0: no, 1: yes
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
set_correct_for_electrical_dark <- function(jwrapper, enable=0L, sr.index=0L){
  jwrapper$setCorrectForElectricalDark(as.integer(sr.index),as.integer(enable))
}
