#' Initialize the connection to the driver
#' 
#' Creates a Wrapper object for calling Omnidriver functions. This object is
#' later used by all other functions to access the spectrometers.
#' 
#' You should call this function only once
#' And cleanup by use of \code{close.srs} before exiting
#' 
#' @keywords manip misc
#' @export
#' @return a wrapper
init_api <- function(){
  return(.jnew("com/oceanoptics/omnidriver/api/wrapper/Wrapper"))
}

#' @export
#' 
#' @rdname init_api
#' 
init_srs  <- init_api
