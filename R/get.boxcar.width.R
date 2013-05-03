#' Get current setting of boxcar width (the number of pixels averaged)
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
get.boxcar.width <- function(jwrapper, sr.index=0L){
  jwrapper$getBoxcarWidth(as.integer(sr.index))
}
