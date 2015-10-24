#' Get a spectrum from the spectrometer
#'
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
get_spectrum <- function(jwrapper, sr.index = 0L){
#   spc <- jwrapper$getSpectrum(as.integer(sr.index))
#   return(as.numeric(spc))
    spc <- .jcall(jwrapper, "[D", "getSpectrum" , as.integer(sr.index))
}

get_spectrum <- function(jwrapper, sr.index=0L, ch.index=NULL) {
  if (is.null(ch.index)) {
    #   spc <- jwrapper$getSpectrum(as.integer(sr.index))
    spc <- .jcall(jwrapper, "[D", "getSpectrum" , as.integer(sr.index))
  } else {
    #   spc <- jwrapper$getSpectrum(as.integer(sr.index), as.integer(ch.index))
    spc <- .jcall(jwrapper, "[D", "getSpectrum" , as.integer(sr.index), as.integer(ch.index))
  }
  as.numeric(spc)
}
