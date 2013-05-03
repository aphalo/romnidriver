#' Checks whether the last spectrum acquired is saturated (= clipped).
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
is.saturated <- function(jwrapper, sr.index=0L){
  jwrapper$isSaturated(as.integer(sr.index))
}
