#' Set "number of scans to average" for addressed spectrometer
#' 
#' @usage set_scans_to_avg(jwrapper, n.scans=1L, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param n.scans number of scans (an integer)
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
set_scans_to_avg <- function(jwrapper, n.scans=1L, sr.index=0L){
  jwrapper$setScansToAverage(as.integer(sr.index),as.integer(n.scans))
}
