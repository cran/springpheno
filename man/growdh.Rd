\name{growdh}
\alias{growdh}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Growing Degree Hours Calculator
}
\description{
Given appropriate inputs, this function calculates the growing degree hours for a given day and locations. The formula is also retained from the original Matlab code for the extended spring indices (SI-x, Ault et al. 2015).
}
\usage{
growdh(tmax, tmin, daylen, baset)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tmax}{
Scalar - daily high temperature (degrees Fahrenheit) for a given day
}
  \item{tmin}{
Scalar - daily low temperature (degrees Fahrenheit) for a given day
}
  \item{daylen}{
Scalar - day length for a given day (calculated from daylength function)
}
  \item{baset}{
Scalar - base temperature for determining growing degree hours. Typically this 31 degrees Fahrenheit
}
}

\value{
GDHOUR - scalar, total growing degree hours for a given day.
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
daylen <- daylength(daystop=daystop,lat=lat)

tmax <- 65
tmin <- 42
dlen <- daylen[60]
bt <- 31

result <- growdh(tmax,tmin,dlen,bt)

}

