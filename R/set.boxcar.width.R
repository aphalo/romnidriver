#' Set setting "boxcar width" (the number of pixels averaged)
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param half.width.px the number of pixels in one half of the bocar window (an integer number)
#' @param sr.index an index to address the spectrometer 
#' @export
#'
set.boxcar.width <- function(jwrapper, half.width.px=1L, sr.index=0L){
  jwrapper$setBoxcarWidth(as.integer(sr.index),as.integer(half.width.px))
}
