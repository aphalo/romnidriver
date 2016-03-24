#' Stop averaging of scans
#' 
#' Stop averaging for addressed spectrometer probably not very useful in
#' "vanilla" R as this aborts the current averaging of spectra, but needs a
#' multithreaded application to be able to call it before get.spectrum returns.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' for the time being not exported
#' @param ch.index an index to address the channel in a spectrometer with more 
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'
#' @note The signature of this function is different to that of the Java
#'   equivalent, so that as with other functions in the package indexes for
#'   addressing spectrometer and channel can have default values.
#'   
stop_averaging <- function(jwrapper,
                           sr.index = 0L,
                           ch.index = 0L) {
  jwrapper$stopAveraging(as.integer(sr.index), as.integer(ch.index))
}
