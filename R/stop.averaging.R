#' Set "stop averaging" for addressed spectrometer
#' probably not useful as this aborts the current
#' averaging of spectra, but needs a multithreaded
#' application to be able to call it before get.spectrum
#' returns.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' for the time being not exported
#'
stop.averaging <- function(jwrapper, sr.index=0L){
  jwrapper$stopAveraging(as.integer(sr.index))
}
