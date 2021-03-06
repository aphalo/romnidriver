#' Set "correct for electrical dark signal"
#' 
#' Set setting "correct for electrical dark signal"
#' for the addressed spectrometer channel
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param enable integer or logical; 0, FALSE: disable; 1, TRUE: enable.
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more 
#'   than one channel.
#'  
#' @export
#' @return a logical value
#'
#' @note The signature of this function is different to that of the Java
#'   equivalent, so that as with other functions in the package indexes for
#'   addressing spectrometer and channel can have default values.
#'   
set_correct_for_electrical_dark <-
  function(jwrapper,
           enable = 0L,
           sr.index = 0L,
           ch.index = 0L) {
    jwrapper$setCorrectForElectricalDark(as.integer(sr.index),
                                         as.integer(ch.index), 
                                         as.integer(enable))
  }
