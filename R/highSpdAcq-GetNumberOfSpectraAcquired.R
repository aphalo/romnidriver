#' Get the number of spectra acquired at high speed
#' 
#' The number of spectra acquired can be smaller than the intended one, and
#' this function retrieved the true number of spectra available in the buffer
#' after the acquisition has finished. A call to this function can be used
#' after a call to \code{highSpdAcq_start_acquisition()} returns.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#'  
#' @export
#' @return a numeric value
#' 
#' @family high speed acquisition functions
#'
highSpdAcq_get_number_of_spectra_acquired <- function(jwrapper) {
  jwrapper$highSpdAcq_GetNumberOfSpectraAcquired()
}
