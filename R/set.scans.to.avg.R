#' Set "number of scans to average"
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param n.scans number of scans (an integer)
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
set_scans_to_average <-
  function(jwrapper,
           n.scans = 1L,
           sr.index = 0L,
           ch.index = 0L) {   
    stopifnot(is.finite(n.scans) && length(n.scans == 1L) && n.scans >= 1L)
    jwrapper$setScansToAverage(as.integer(sr.index),
                               as.integer(ch.index),
                               as.integer(n.scans))
  }
#' @export
#' @rdname set_scans_to_average
set_scans_to_avg <- set_scans_to_average