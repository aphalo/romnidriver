% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature-spectrum-type.R
\name{get_feature_spectrum_type}
\alias{get_feature_spectrum_type}
\title{Get feature "spectrum type"}
\usage{
get_feature_spectrum_type(jwrapper, sr.index = 0L)
}
\arguments{
\item{jwrapper}{an open Wrapper object from Omnidriver}

\item{sr.index}{an index to address the spectrometer}
}
\value{
an object which provides the desired interface, or null if this
  feature is not available for this spectrometer.
}
\description{
Get a wrapper for accesing this optional feature.
}
\note{
Before calling this function you first need to check that the feature
  is supported by the spectrometer in use by calling
  \code{\link{is_feature_supported_spectrum_type}}.
}
