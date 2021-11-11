\name{chillh}
\alias{chillh}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Chill Hours Calculator
}
\description{
This function calculates the chill hours for a given day and plant given the high and low temperature, plant base temperature, and day length (from the daylength function). Still in development, but based on Schwarz et al. (2006 and 2013)
}
\usage{
chillh(tmax, tmin, daylen, baset)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tmax}{
Scalar - daily high temperature in degrees Fahrenheit
}
  \item{tmin}{
Scalar - daily low temperature in degrees Fahrenheit
}
  \item{daylen}{
Scalar - day length in hours
}
  \item{baset}{
Scalar - base temperature for determining chill hours. Typically this is 44.96 degrees Fahrenheit, but can be plant specific.
}
}

\value{
CHOUR - total chill hours for a given day. That is, number of hours the temperature fell below baset.
}
\references{
Schwarz, M., R. Ahas and A. Aasa, 2006: Onset of spring starting earlier across the Northern Hemisphere, 12, DOI: 10.1111/j.1365-2486.2005.01097.x

Schwarz, M., T.R. Ault and J.L. Betancourt, 2013: Spring onset variations and trends in the continental United States: Past and regional assessment using temperature-based indices. International Journal of Climatology, 33, DOI: 10.1002/joc.3625
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}

\examples{
 daystop <- 366
lat <- 35.476 # latitude for OKC
daylen <- daylength(daystop=daystop,lat=lat)

tmax <- 65
tmin <- 42
dlen <- daylen[60]
bt <- 44.96

result <- chillh(tmax,tmin,dlen,bt)

}

