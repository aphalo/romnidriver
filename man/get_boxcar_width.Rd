\name{get_boxcar_width}
\alias{get_boxcar_width}
\title{Get current setting of boxcar width}
\usage{
get_boxcar_width(jwrapper, sr.index=0L))
}
\arguments{
  \item{jwrapper}{an open Wrapper object from Omnidriver}

  \item{sr.index}{an index to address the spectrometer}
}
\value{
a numeric value
}
\description{
Function to query the boxcar width being used (the number
of pixels averaged).
}
\keyword{manip}
\keyword{misc}

