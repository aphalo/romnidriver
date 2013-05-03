\name{init.srs}
\alias{init.srs}
\title{Initialize the connection to all currently connected
spectrometers}
\usage{
  init.srs()
}
\description{
  This creates a Wrapper object using Omnidriver This
  object is later used by all other functions to access the
  spectrometers
}
\details{
  You should call this function only once And cleanup by
  use of \code{close.srs} before exiting
}

