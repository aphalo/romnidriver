#' Get maximum intensity
#' 
#' A function to query the maximum integration time that can be used
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @return maximum value per pixel, in units of counts???.
#' @export
#'
get_maximum_intensity <- function(jwrapper, sr.index=0L){
  jwrapper$getMaximumIntensity(as.integer(sr.index))
}
