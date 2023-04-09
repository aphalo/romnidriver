#' Get time difference between time stamps
#' 
#' Compute the time difference between two high speed time stamps.
#' 
#' @param before,after HighResTimeStamp defined in OmniDriver API and retrieved
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
get_seconds_time_delta <- function(before, after) {
  jwrappersEnv$HSTimeJavaWrapper$getSecondsTimeDelta(before, after)
}

#' @rdname get_seconds_time_delta
#' 
#' @export
#' 
get_nano_time_delta <- function(before, after) {
  jwrappersEnv$HSTimeJavaWrapper$getNanoTimeDelta(before, after)
}

#' @rdname get_seconds_time_delta
#' 
#' @export
#' 
get_micro_time_delta <- function(before, after) {
  jwrappersEnv$HSTimeJavaWrapper$getMicroTimeDelta(before, after)
}

#' @rdname get_seconds_time_delta
#' 
#' @export
#' 
get_milli_time_delta <- function(before, after) {
  jwrappersEnv$HSTimeJavaWrapper$getMilliTimeDelta(before, after)
}

