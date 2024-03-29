#' Did the last USB operation time out?
#' 
#' Checks whether the last USB operation has timed out. This is useful when working 
#' with triggers together with signals used for triggering that may fail or be
#' delayed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'
is_USB_timeout <- function(jwrapper,
                           sr.index = 0L,
                           ch.index = 0L) {
  jwrapper$isUSBTimeout(as.integer(sr.index), as.integer(ch.index))
}
