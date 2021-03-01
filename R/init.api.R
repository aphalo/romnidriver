#' Initialize the connection to the driver
#' 
#' Creates a Wrapper object for calling Omnidriver functions. This object is
#' later used by all other functions to access the spectrometers.
#' 
#' You should call this function only once
#' And cleanup by use of \code{close.srs} before exiting
#' 
#'  
#' @export
#' @return a wrapper
init_api <- function(){
  return(rJava::.jnew("com/oceanoptics/omnidriver/api/wrapper/Wrapper"))
}

#' @export
#' 
#' @rdname init_api
#' 
init_srs  <- init_api

#' Check if names are available through the Java wrapper
#' 
#' OmniDriver shows some variation with respect to the methods it exposes
#' through the wrapper. This test makes it possible to avoid Java errors
#' and possibly use an alternative method.
#' 
#' @param jwrapper jobjRef An open Wrapper object from OmniDriver.
#' @param method.name character vector The name of the method(s) to search for.
#' @param value logical If \code{TRUE} names are returned as character strings,
#'   otherwise numeric indexes into the matching names in \code{method.name}. 
#' 
#' @return A character vector, containing the methods from \code{method.names}
#'   that are available.
#' 
#' @keywords internal
#' 
oo_method_exists <- function(jwrapper, method.name, value = TRUE) {
  if (is.null(jwrapper)) {
    selector <- FALSE
  } else {
    jwrapper.names <- unique(gsub("\\(|\\)", "", names(jwrapper)))
    selector <- method.name %in% jwrapper.names 
  }
  if (value)
    method.name[selector]
  else
    which(selector)
}

