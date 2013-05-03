#' Flush the last spectrum acquired or currently being acquired
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
spectrum.flush <- function(jwrapper, sr.index=0L){
  jwrapper$flushSpectrum(as.integer(sr.index))
}
