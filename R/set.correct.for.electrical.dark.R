#' Set setting "correct for electrical dark signal"
#' 
#' Set setting "correct for electrical dark signal"
#' for the addressed spectrometer
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param enable 0: no, 1: yes
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a logical value
#'
#' @note The signature of this function is different to that of the Java
#'   equivalent, so that as with other functions in the package indexes for
#'   addressing spectrometer and channel can have default values.
#'   
set_correct_for_electrical_dark <- function(jwrapper, enable=0L, sr.index=0L){
  jwrapper$setCorrectForElectricalDark(as.integer(sr.index),as.integer(enable))
}
