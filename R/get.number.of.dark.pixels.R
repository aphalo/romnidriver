#' Get number of dark pixels
#' 
#' Function to query the number of pixels in the CCD array.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value with the total number of pixels (ie. CCD elements)
#'   provided by this spectrometer, including any dark or bevel (unused) pixels.
#'
#'
get_number_of_dark_pixels <- function(jwrapper, sr.index=0L){
  jwrapper$getNumberOfDarkPixels(as.integer(sr.index))
}
