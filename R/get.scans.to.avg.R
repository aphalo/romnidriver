#' Get "number of scans to average" for addressed spectrometer
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_scans_to_avg <- function(jwrapper, sr.index=0L){
  jwrapper$getScansToAverage(as.integer(sr.index))
}
