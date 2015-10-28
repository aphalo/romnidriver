#' Get "number of scans to average" 
#' 
#' Get the setting "number of scans to average" currently in use by the
#' addressed spectrometer channel.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_scans_to_average <-
  function(jwrapper,
           sr.index = 0L,
           ch.index = 0L) {
    jwrapper$getScansToAverage(as.integer(sr.index), as.integer(ch.index))
  }

#' @export
#' @rdname get_scans_to_average
get_scans_to_avg <- get_scans_to_average