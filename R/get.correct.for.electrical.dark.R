#' Get current setting for electrical dark correction
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
get.correct.for.electrical.dark <- function(jwrapper, sr.index=0L){
  jwrapper$getCorrectForElectricalDark(as.integer(sr.index))
}
