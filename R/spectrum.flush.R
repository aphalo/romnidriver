#' Flush the most recent spectrum
#' 
#' Flush the most recent spectrum acquired or currently being acquired
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
spectrum_flush <- function(jwrapper, sr.index=0L){
  jwrapper$flushSpectrum(as.integer(sr.index))
}
