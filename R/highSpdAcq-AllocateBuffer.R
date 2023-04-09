#' Allocate memory buffer for high speed acquisition
#' 
#' Pre-allocates a buffer. A call to this function should always precede a call
#' to \code{highSpdAcq_start_acquisition()}
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param number.of.spectra integer The number of spectra to be acquired.
#'  
#' @export
#' @return a numeric value
#' 
#' @family high speed acquisition functions
#'
highSpdAcq_allocate_buffer <- function(jwrapper,
                         sr.index = 0L,
                          number.of.spectra = 100L) {
  jwrapper$highSpdAcq_AllocateBuffer(Index = as.integer(sr.index), 
                                     Size = as.integer(number.of.spectra))
}
