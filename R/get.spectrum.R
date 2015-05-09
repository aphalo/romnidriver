#' Get a spectrum from the spectrometer
#'
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_spectrum <- function(jwrapper, sr.index = 0L){
#   spc <- jwrapper$getSpectrum(as.integer(sr.index))
#   return(as.numeric(spc))
    spc <- .jcall(jwrapper, "[D", "getSpectrum" , as.integer(sr.index))
}
