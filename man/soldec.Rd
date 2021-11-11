\name{soldec}
\alias{soldec}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Solar Declination Determination
}
\description{
Retains the legacy calculation for the solar declination from the Ault et al. (2015) Matlab code. This returns the day of year based on the start of climatological spring, meant for use with the function daylength. That is, a DOY=1 is March 1. The function itself uses the calendar day of the year (from 1-366).
}
\usage{
soldec(DOY)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DOY}{
Scalar - day of year from 1 to 366.
}
}

\value{
Scalar - Spring climatological calendar day of year for the location and calendar day of year matching the appropriate solar declination angle.
}
\references{
Ault, T.R., R. Zurita-Miller and M. Schwarz, 2015: A Matlab© toolbox for calculating spring indices from daily meteorological data. Computers and Geosciences, 83, DOI: 10.1016/j.cageo.2015.06.015
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}

\examples{
doy <- 45
result <- soldec(doy)
}

