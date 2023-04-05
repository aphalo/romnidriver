#' Get one spectrum acquired at high speed
#' 
#' Retrieve a single, previously measured, spectrum from the buffer. A call to
#' this function can be used after a call to
#' \code{highSpdAcq_start_acquisition()} returns.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param spectrum.number integer The index into the sequence of spectra
#'    most recently acquired at high speed and available in the memory buffer.
#'  
#' @export
#' @return a numeric vector
#' 
#' @family high speed acquisition functions
#'
highSpdAcq_get_spectrum <- function(jwrapper,
                                    spectrum.number = 1) {
  jwrapper$highSpdAcq_GetSpectrum(spectrumNumber = as.integer(spectrum.number))
}
