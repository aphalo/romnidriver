\name{set.timeout}
\alias{set.timeout}
\title{Set "timeout" for addressed spectrometer
useful when used together with triggers}
\usage{
  set.timeout(jwrapper, time.millisec = 1000L,
    sr.index = 0L)
}
\arguments{
  \item{jwrapper}{an open Wrapper object from Omnidriver}

  \item{time.millisec}{time to wait in milliseconds (an
  integer)}

  \item{sr.index}{an index to address the spectrometer}
}
\description{
  Set "timeout" for addressed spectrometer useful when used
  together with triggers
}

