#' Start high speed acquisition
#' 
#' Acquires a series of spectra into a preallocated buffer. A call to this 
#' function should be always preceded by a call to 
#' \code{highSpdAcq_allocate_buffer()}.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a numeric value
#' 
#' @family high speed acquisition functions
#'
highSpdAcq_start_acquisition <- function(jwrapper,
                                         sr.index = 0L) {
  jwrapper$highSpdAcq_StartAcquisition(Index = as.integer(sr.index))
}
