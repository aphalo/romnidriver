#' Set "boxcar width"
#' 
#' Set setting "boxcar width" (the number of adjacent pixels averaged)
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param half.width.px the number of pixels in one half of the bocar window (an
#'   integer number)
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address the channel in a spectrometer with more 
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'   
#' @note The signature of this function is different to that of the Java
#'   equivalent, so that as with other functions in the package indexes for
#'   addressing spectrometer and channel can have default values.
#'   
set_boxcar_width <-
  function(jwrapper,
           half.width.px = 0L,
           sr.index = 0L,
           ch.index = 0L) {
    jwrapper$setBoxcarWidth(as.integer(sr.index),
                            as.integer(ch.index),
                            as.integer(half.width.px))
  }
