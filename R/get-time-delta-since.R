#' Get time difference since a time stamp
#' 
#' Compute the time difference between a high speed time stamp and current time.
#' 
#' @param then HighResTimeStamp defined in OmniDriver API and retrieved
#'    or constructed with other OmniDriver API methods. Not vectorized!
#'  
#' @export
#' @return a numeric vector of length one giving the time difference in
#'   seconds, milliseconds, microseconds or nanoseconds.
#'   
#' @note Nanosecond timing and normal timing are not coincident, but as both
#' are stored in parallel, the differences should differ only in their
#' resolution.
#' 
#' @family high speed acquisition functions
#'
get_seconds_time_delta_since <- function(then) {
  jwrappersEnv$HSTimeJavaWrapper$getSecondsTimeDeltaSince(then)
}

#' @rdname get_seconds_time_delta_since
#' 
#' @export
#' 
#' @family high speed acquisition functions
#'
get_nano_time_delta_since <- function(then) {
  jwrappersEnv$HSTimeJavaWrapper$getNanoTimeDeltaSince(then)
}

#' @rdname get_seconds_time_delta_since
#' 
#' @export
#' 
#' @family high speed acquisition functions
#'
get_micro_time_delta_since <- function(then) {
  jwrappersEnv$HSTimeJavaWrapper$getMicroTimeDeltaSince(then)
}

#' @rdname get_seconds_time_delta_since
#' 
#' @export
#' 
#' @family high speed acquisition functions
#'
get_milli_time_delta_since <- function(then) {
  jwrappersEnv$HSTimeJavaWrapper$getMilliTimeDeltaSince(then)
}

