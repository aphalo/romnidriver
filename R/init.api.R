#' Initialize the connection to the driver
#' 
#' @description Function \code{init_api()} (and its synonim \code{init_srs()})
#'   create a Wrapper object for calling Omnidriver functions. This Java object of
#'   class \code{com.oceanoptics.omnidriver.api.wrapper.Wrapper} is
#'   later used by all other functions in the rOmniDriver to communicate with 
#'   the spectrometers through the OmniDriver API from Ocen Insight.
#' 
#' Only one wrapper object can be active at a time. You should call this
#' function only once and save the returned object as it is used to access the
#' methods implementing communication with the spectrometer. Clean up by use of
#' \code{close_srs()} before exiting or before initializing another wrapper to
#' the same driver.
#'  
#' @export
#' 
#' @return a wrapper to an instance of a Java object of class "wrapper"
#' 
init_api <- function() {
  if (getOption("rOmniDriver.offline", TRUE)) {
    warning("rOmniDriver off-line: API not initialised",
            call. = FALSE, 
            immediate. = TRUE)
    return(NULL)
  }
  jwrapper <- rJava::.jnew("com/oceanoptics/omnidriver/api/wrapper/Wrapper")
  if (!is_api_enabled(jwrapper)) {
    warning("OmniDriver API initialization failed.",
            call. = FALSE, 
            immediate. = TRUE)
  }
  jwrapper
}

#' @rdname init_api
#' 
#' @export
#' 
init_srs  <- init_api

#' Check if names are available through the Java wrapper
#' 
#' OmniDriver shows some variation with respect to the methods it exposes
#' through the wrapper. This test makes it possible to avoid Java errors
#' and possibly use an alternative method or issue a message.
#' 
#' @param jwrapper jobjRef A Java Wrapper object from OmniDriver.
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
  if (is_api_enabled(jwrapper)) {
    jwrapper.names <- unique(gsub("\\(|\\)", "", names(jwrapper)))
    selector <- method.name %in% jwrapper.names 
  }  else {
    selector <- FALSE
  }
  
  if (value) {
    method.name[selector]
  } else {
    which(selector)
  }
 }

#' @rdname init_api
#' 
#' @description Function \code{is_api_enableb()} tests if the argument passed to 
#' \code{jwrapper} has been initialized and if it is connected to an active
#' instance of the Java wrapper class.
#' 
#' @param jwrapper jobjRef A Java Wrapper object from OmniDriver.
#' 
#' @export
#' 
is_api_enabled <- function(jwrapper) {
  !is.null(jwrapper) &&
    inherits(jwrapper, "jobjRef") &&
    !inherits(try(get_api_version(jwrapper)), "try-error")
}

#' @rdname init_api
#' 
#' @description Function \code{init_api_extensions()} enables API extensions
#'   and returns a wrapper that makes it possible to call additional
#'   functions.
#' 
#' @export
#' 
init_extended_api <- function() {
  jextwrapper <- rJava::.jnew("com/oceanoptics/omnidriver/api/wrapper/WrapperExtensions")
  if (!class(jextwrapper) == "jobjRef") {
    warning("OmniDriver API initialization failed.",
            call. = FALSE, 
            immediate. = TRUE)
  }
  jextwrapper
}

#' @rdname init_api
#' 
#' @description Function \code{is_extended_api_enabled()} tests if the argument passed to 
#' \code{jwrapperext} has been initialized and if it is connected to an active
#' instance of the Java wrapper class.
#' 
#' @param jwrapperext jobjRef An "extension" Java Wrapper object from OmniDriver API.
#' 
#' @return logical
#' 
#' @export
#' 
is_extended_api_enabled <- function(jwrapperext) {
  !is.null(jwrapperext) &&
    inherits(jwrapperext, "jobjRef")
}

#' @rdname init_api
#' 
#' @description Function \code{init_api_extensions()} enables API extensions
#'   and returns a wrapper that makes it possible to call additional
#'   functions.
#' 
#' @export
#' 
init_highres_time_api <- function() {
  if (!exists("HSTimeJavaWrapper", jwrappersEnv)) {
    jhstimewrapper <- rJava::.jnew("com/oceanoptics/highrestiming/HighResTimeStamp")
    if (!class(jhstimewrapper) == "jobjRef") {
      warning("OmniDriver API initialization failed.",
              call. = FALSE, 
              immediate. = TRUE)
    } else {
      assign("HSTimeJavaWrapper", jhstimewrapper, pos = jwrappersEnv)
    }
  }
}

#' @rdname init_api
#' 
#' @description Function \code{is_extended_api_enabled()} tests if the argument passed to 
#' \code{jhstimewrapper} has been initialized and if it is connected to an active
#' instance of the Java wrapper class.
#' 
#' @param jhstimewrapper jobjRef An "HighResTimeStamp" Java Wrapper object from API.
#' 
#' @return logical
#' 
#' @export
#' 
is_highres_time_api_enabled <- function(jhstimewrapper) {
  exists("HSTimeJavaWrapper", jwrappersEnv)
}

### environment defined to hold Java Wrappers to Java packages that are independent
#   of the spectrometer model used

jwrappersEnv <- new.env()
