#' Set "correct for detector nonlinearity"
#' 
#' Set setting "correct for detector nonlinearity" for the addressed
#' spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param correct integer or logical; 0, FALSE: apply correction; 1, TRUE: do 
#'   not apply correction.
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address the channel in a spectrometer with more 
#'   than one channel.
#'  
#' @export
#' @return a logical value that the user SHOULD test as the method may fail.
#' @note The signature of this function is different to that of the Java 
#'   equivalent, so that as with other functions in the package indexes for 
#'   addressing spectrometer and channel can have default values.
#'   
set_correct_for_detector_nonlinearity <-
  function(jwrapper,
           correct = 0L,
           sr.index = 0L,
           ch.index = 0L) {
    jwrapper$setCorrectForDetectorNonlinearity(as.integer(sr.index),
                                               as.integer(ch.index),
                                               as.integer(correct))
  }
