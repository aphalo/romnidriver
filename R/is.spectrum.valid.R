#' Checks whether the last spectrum acquired is valid 
#' (= no errors have occurred during acquisition).
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
is.spectrum.valid <- function(jwrapper, sr.index=0L){
  jwrapper$isSpectrumValid(as.integer(sr.index))
}
