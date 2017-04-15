#' Feature "ìnternal trigger"
#' 
#' Check whether feature "ìnternal trigger" is available in the spectrometer
#' addressed. Retrieve an interface that allows to control the ìnternal
#' trigger. Control internal trigger of light sources such as Jaz PX.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return an integer value
#'
is_feature_supported_internal_trigger <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedInternalTrigger(as.integer(sr.index))
}

#' @rdname is_feature_supported_internal_trigger
#'
#' @note Before calling \code{get_feature_controller_internal_trigger} you first need to check that the feature
#'   is supported by the spectrometer in use by calling 
#'   \code{is_feature_supported_internal_trigger}.
#' 
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
get_feature_controller_internal_trigger <-
  function(jwrapper, sr.index = 0L) {
    jwrapper$getFeatureControllerInternalTrigger(as.integer(sr.index))
  }

#' @rdname is_feature_supported_internal_trigger
#'
#' @param tgr.wrapper feature wrapper as returned by function
#'   \code{rOmniDriver::get_feature_controller_internal_trigger}
#'
#' @export
#'
#' @return numeric vector of length three with times in seconds for "min",
#'   "max" and "step".
#'
get_trigger_period_valid_range <- function(tgr.wrapper) {
  tgr.range <- numeric(3)
  tgr.range[1] <- tgr.wrapper$getInternalTriggerPeriodMinimum()
  tgr.range[2] <- tgr.wrapper$getInternalTriggerPeriodMaximum()
  tgr.range[3] <- tgr.wrapper$getInternalTriggerPeriodIncrement()
  names(tgr.range) <- c("min", "max", "step")
  tgr.range * 1e-6
}

#' @rdname is_feature_supported_internal_trigger
#'
#' @export
#'
get_trigger_period <- function(tgr.wrapper) {
  z <- tgr.wrapper$getInternalTriggerPeriodMicros()
  if (z >= 0) {
    z * 1e-6
  } else {
    warning("Error getting trigger period!")
    NA_real_
  }
}

#' @rdname is_feature_supported_internal_trigger
#'
#' @param period numeric Internal trigger period in seconds.
#'
#' @export
#'
set_trigger_period <- function(tgr.wrapper, period) {
  period <- as.integer(period * 1e6)
  z <- tgr.wrapper$setInternalTriggerPeriodMicros(microseconds = period)
  if (z >= 0) {
    z * 1e-6
  } else {
    warning("Error setting trigger period!")
    get_trigger_period(tgr.wrapper)
  }
}

#' @rdname is_feature_supported_internal_trigger
#'
#' @param source character, "on", "off", "external", "internal" or integer
#'   [0..3] or logical.
#'
#' @export
#'
set_trigger_source <- function(tgr.wrapper, source) {
  sources <- c("external", "on", "off", "internal")
  if (is.character(source)) {
    source <- which(sources == tolower(source)) - 1
  } else if (is.logical(source)) {
    ifelse(sources, 2, 1)
  } else {
    source <- as.integer(source)
  }
  if (is.null(source) || is.na(source) || source > 3L || source < 0L) {
    warning("Error is 'source' argument, skipping!")
    FALSE
  } else {
    z <- tgr.wrapper$setTriggerSource(triggerSourceCode = source)
    !as.logical(z) # error: -1 -> FALSE, success: 0 -> TRUE
  }
}

#' @rdname is_feature_supported_internal_trigger
#'
#' @param char.out logical If TRUE return a character string, otherwise return
#'   integer as returned by the API call.
#'
#' @export
#'
get_trigger_source <- function(tgr.wrapper, char.out = TRUE) {
  z <- tgr.wrapper$getTriggerSource()
  if (char.out) {
    c("external", "on", "off", "internal")[z + 1L]
  } else {
    z
  }
}
