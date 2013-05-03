#' Checks whether the last operation has timed out
#' Usefull when using triggers
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @export
#'
is.timeout <- function(jwrapper, sr.index=0L){
  jwrapper$isTimeout(as.integer(sr.index))
}
