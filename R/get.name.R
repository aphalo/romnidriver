#' Get name of spectrometer
#' 
#' A function to query the name (e.g. USB2000)
#' from a spectrometer.
#' 
#' @usage get_name(jwrapper, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @return a value
#' @export
#'
get_name <- function(jwrapper, sr.index=0L){
  jwrapper$getName(as.integer(sr.index))
}
