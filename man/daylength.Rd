\name{daylength}
\alias{daylength}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Daylength Calculator
}
\description{
The function daylength will calculate the day length for a given for all days of the year up to the user defined day of the year and latitude of the location. Essentially this is the number of hours of daylight for given location for each day. The formula for day length calculation is retained from Ault et al. (2015).
}
\usage{
daylength(daystop, lat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{daystop}{
Scalar - Calendar day of year from 1 to 366 where the function should cease day length calculations
}
  \item{lat}{
Scalar - latitude of the locations, in decimal degrees
}
}

\value{
DAYLEN - vector of length equal to input daystop describing the total hours of daylight per day.
}
\references{
Ault, T.R., R. Zurita-Miller and M. Schwarz, 2015: A Matlab© toolbox for calculating spring indices from daily meteorological data. Computers and Geosciences, 83, DOI: 10.1016/j.cageo.2015.06.015
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}

\examples{
daystop <- 366
lat <- 35.476 # latitude for OKC
result <- daylength(daystop=daystop,lat=lat)
}

