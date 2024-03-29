% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.calibration.coefficients.from.buffer.R
\name{get_calibration_coefficients_from_buffer}
\alias{get_calibration_coefficients_from_buffer}
\title{Get calibration coefficients from buffer}
\usage{
get_calibration_coefficients_from_buffer(
  jwrapper,
  sr.index = 0L,
  ch.index = 0L
)
}
\arguments{
\item{jwrapper}{an open Wrapper object from Omnidriver}

\item{sr.index}{an index to address the spectrometer}

\item{ch.index}{an index to address the channel in a spectrometer with more
than one channel.}
}
\value{
A \code{Coefficients} Java object containing all of the calibration
  coefficients..
}
\description{
Function to query calibration coefficients from memory buffer of a
spectrometer.
}
