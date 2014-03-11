#' Checks whether the last operation has timed out
#' Usefull when using triggers
#' 
#' @usage is_timeout(jwrapper, sr.index=0L)
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @keywords manip misc
#' @export
#' @return a numeric value
#'
is_timeout <- function(jwrapper, sr.index=0L){
  jwrapper$isTimeout(as.integer(sr.index))
}
