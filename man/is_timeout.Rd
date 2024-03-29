% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is.timeout.R
\name{is_timeout}
\alias{is_timeout}
\title{Did the last operation time out?}
\usage{
is_timeout(jwrapper, sr.index = 0L)
}
\arguments{
\item{jwrapper}{an open Wrapper object from Omnidriver}

\item{sr.index}{an index to address the spectrometer}
}
\value{
a numeric value
}
\description{
Checks whether the last operation has timed out. This is useful when working 
with triggers together with signals used for triggering that may fail or be
delayed.
}
