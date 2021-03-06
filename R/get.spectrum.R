#' Get a spectrum from the spectrometer
#'
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'
get_spectrum <- function(jwrapper,
                         sr.index = 0L,
                         ch.index = 0L) {
  spc <- jwrapper$getSpectrum(as.integer(sr.index), as.integer(ch.index))
  as.double(spc) # is this needed
}
