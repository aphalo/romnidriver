#' Get current setting of boxcar width
#' 
#' Function to query the boxcar width being used
#' (the number of pixels averaged).
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'
#'
get_boxcar_width <- function(jwrapper,
                             sr.index = 0L,
                             ch.index = 0L) {
  jwrapper$getBoxcarWidth(as.integer(sr.index), as.integer(ch.index))
}
