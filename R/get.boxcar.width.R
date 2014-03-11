#' Get current setting of boxcar width
#' 
#' Function to query the boxcar width being used
#' (the number of pixels averaged).
#' 
#' @usage get_boxcar_width(jwrapper, sr.index=0L))
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
#'
get_boxcar_width <- function(jwrapper, sr.index=0L){
  jwrapper$getBoxcarWidth(as.integer(sr.index))
}
