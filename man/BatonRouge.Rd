\name{BatonRouge}
\alias{BatonRouge}
\docType{data}
\title{
Example Data for use with springpheno package.
}
\description{
Example data for use with the springpheno package. Includes high temperatures,
low temperatures, latitude for Baton Rouge, LA along with the years of data
available in the example dataset.
}
\usage{data("BatonRouge")}
\format{
  Two matrices, a scalar, and a vector
  \describe{
    \item{\code{TMAX}}{a numeric matrix}
    \item{\code{TMIN}}{a numeric matrix}
    \item{\code{lat}}{a numeric scalar}
    \item{\code{YEAR}}{a numeric vector}
  }
}
\details{
TMAX contains daily high temperature (degF) for Baton Rouge, LA from 1981-2005
TMIN contains daily low temperature (degF) for Baton Rouge, LA from 1981-2005
lat is the latitude of Baton Rouge, LA
YEAR is the vector of years 1981-2005
}

\examples{
data(BatonRouge)
## maybe str(BatonRouge) ; plot(BatonRouge) ...
}
\keyword{datasets}
