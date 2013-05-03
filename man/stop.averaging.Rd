\name{stop.averaging}
\alias{stop.averaging}
\title{Set "stop averaging" for addressed spectrometer
probably not useful as this aborts the current
averaging of spectra, but needs a multithreaded
application to be able to call it before get.spectrum
returns.}
\usage{
  stop.averaging(jwrapper, sr.index = 0L)
}
\arguments{
  \item{jwrapper}{an open Wrapper object from Omnidriver}

  \item{sr.index}{an index to address the spectrometer for
  the time being not exported}
}
\description{
  Set "stop averaging" for addressed spectrometer probably
  not useful as this aborts the current averaging of
  spectra, but needs a multithreaded application to be able
  to call it before get.spectrum returns.
}

