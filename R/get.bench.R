#' Get optical properties of optical bench
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
get.bench <- function(jwrapper, sr.index=0L){
  jwrapper$getBench(as.integer(sr.index))
}
