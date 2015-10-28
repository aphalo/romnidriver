#' Get total number of pixels in CCD array
#' 
#' Function to query the total number of pixels in a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value with the total number of pixels (ie. CCD elements)
#'   provided by this spectrometer, including any dark or bevel (unused) pixels.
#'
#'
get_number_of_pixels <-
  function(jwrapper,
           sr.index = 0L,
           ch.index = 0L) {
    jwrapper$getNumberOfPixels(as.integer(sr.index), as.integer(ch.index))
  }
