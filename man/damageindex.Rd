\name{damageindex}
\alias{damageindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Damage Index Calculator
}
\description{
This function calculates the damage index (Schwarz et al. 2006, Schwarz et al. 2013) given the first leaf index (FLI) and day of year for the last spring freeze. This is based on the calculation done in the original Matlab code base (Ault et al. 2015).
}
\usage{
damageindex(leafidx, lastfreeze)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{leafidx}{
Scalar - FLI value from the leafindex function. It's recommended to use the average, but one could also use the FLI for the individual plants.
}
  \item{lastfreeze}{
Scalar - day of year of the last spring freeze.
}
}

\value{
The output is a scalar with the value of the damage index. The damage index is effectively the difference between the FLI and the last freeze. Negative values are converted to zero as no damage occurs if the last freeze is before the first leaf.
}
\references{
Ault, T.R., R. Zurita-Miller and M. Schwarz, 2015: A Matlab© toolbox for calculating spring indices from daily
    meteorological data. Computers and Geosciences, 83, DOI: 10.1016/j.cageo.2015.06.015

Schwarz, M., R. Ahas and A. Aasa, 2006: Onset of spring starting earlier across the Northern Hemisphere, 12,
    DOI: 10.1111/j.1365-2486.2005.01097.x

Schwarz, M., T.R. Ault and J.L. Betancourt, 2013: Spring onset variations and trends in the continental United
    States: Past and regional assessment using temperature-based indices. International Journal of Climatology,
    33, DOI: 10.1002/joc.3625
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}

