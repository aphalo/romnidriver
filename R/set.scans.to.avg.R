#' Set "number of scans to average" for addressed spectrometer
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param n.scans number of scans (an integer)
#' @param sr.index an index to address the spectrometer 
#' @export
#'
set.scans.to.avg <- function(jwrapper, n.scans=1L, sr.index=0L){
  jwrapper$setScansToAverage(as.integer(sr.index),as.integer(n.scans))
}
