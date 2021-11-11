\name{chilldate}
\alias{chilldate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Chill Date Calculator
}
\description{
This function calculates the estimated day of the calendar year where the chill requirement is met for each of the three plants used in the extended spring indices (SI-x, Schwarz et al. 2006; 2013).
}
\usage{
chilldate(tasmax, tasmin, DOY, daylen, baset, plant = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tasmax}{
Vector - daily high temperatures for a given year
}
  \item{tasmin}{
Vector - daily low temperatures for a given year
}
  \item{DOY}{
Vector - day of year values for a given year (1:365 or 1:366 depending on calendar)
}
  \item{daylen}{
Vector - day lengths for each day for a given year (calculated from daylength function).
}
  \item{baset}{
Scalar  - base temperature for determining chill hours. Typically this is 44.96 degrees Fahrenheit, but can be plant specific.
}
  \item{plant}{
Plant type 1 (default), 2, or 3. plant = 1 for lilac, plant = 2 for arnold red, or plant =3 for zabelli.
}
}

\value{
chillDOY - scalar, estimated day of year the chill requirement for the specified plant is met.
}
\references{
Schwarz, M., R. Ahas and A. Aasa, 2006: Onset of spring starting earlier across the Northern Hemisphere, 12, DOI: 10.1111/j.1365-2486.2005.01097.x

Schwarz, M., T.R. Ault and J.L. Betancourt, 2013: Spring onset variations and trends in the continental United States: Past and regional assessment using temperature-based indices. International Journal of Climatology, 33, DOI: 10.1002/joc.3625
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}
\note{
Many questions regarding how this is calculated, use this function at your own risk.
}

