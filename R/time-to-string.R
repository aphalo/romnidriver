#' Convert time stamp to string
#' 
#' Convert a time stamp into a character string. Times with millisecond 
#' resolution and nanosecond resolutions are separate, with the nanosecond
#' component useful for computing time differences only.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param oo_timestamp HighResTimeStamp defined in OmniDriver API and retrieved
#'    or constructed with other OmniDriver API methods. Not vectorized!
#'  
#' @export
#' @return a character string.
#'   
#' @note Nanosecond timing and normal timing are not coincident.
#' 
#' @family high speed acquisition functions
#'
oo_timestamp_to_string <- function(jwrapper, oo_timestamp) {
  jwrapper$toString(oo_timestamp)
}

