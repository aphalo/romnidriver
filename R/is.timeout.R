#' Did the last operation time out?
#' 
#' Checks whether the last operation has timed out. This is useful when working 
#' with triggers together with signals used for triggering that may fail or be
#' delayed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'
is_timeout <- function(jwrapper,
                       sr.index = 0L) {
  switch(oo_method_exists(jwrapper, c("isTimeout", "isUSBTimeout")),
         isTimeout = 
           jwrapper$isTimeout(as.integer(sr.index)),
         setUSBTimeout = 
           {message("Checking USB time out.");
             jwrapper$isUSBTimeout(as.integer(sr.index))},
         warning("No method to check time out found"))
}
