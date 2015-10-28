#' Set "integration time"
#' 
#' Set "integration time" for the addressed spectrometer channel
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param time.usec integartion time in microseconds (an integer)
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more 
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
#' @note The signature of this function is different to that of the Java
#'   equivalent, so that as with other functions in the package indexes for
#'   addressing spectrometer and channel can have default values.
#'   
set_integration_time <-
  function(jwrapper,
           time.usec = 100L,
           sr.index = 0L,
           ch.index = 0L) {
    jwrapper$setIntegrationTime(as.integer(sr.index),
                                as.integer(ch.index),
                                as.integer(time.usec))
  }
