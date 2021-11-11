\name{synval}
\alias{synval}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Synoptic Event Identifier
}
\description{
This function identifies if a given period is a synoptic warm event which would help trigger plant growth. This function requires the growing degree hours for the current day and the growing degree hours for the prior seven days. Finally, this function will calculate if a period will trigger growth for first leaf or first bloom. The formulas for this calculation are based on the original Matlab code for the extended spring indices (SI-x, Ault et al. 2015)
}
\usage{
synval(GDH, lagGDH, type = "leaf")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{GDH}{
Scalar - growing degree hours for a given day
}
  \item{lagGDH}{
Vector - growing degree hours for the 7 previous days. Must be a vector of at least a length 7 or the function will throw an error.
}
  \item{type}{
Either leaf (default) to identify events contributing to first leaf, or bloom to identify events contributing to first bloom.
}
}

\value{
The output is a list with the following:

\item{synflag}{
Scalar - synoptic event flag. Has a value of 1 if a synoptic event happened, value of 0 otherwise.
}
\item{dde2}{
Scalar - sum of growing degree hours for current day and previous two days.
}
\item{dd57}{
Scalar - sum of growing degree hours 5-7 prior to current day.
}

}
\references{
Ault, T.R., R. Zurita-Miller and M. Schwarz, 2015: A Matlab© toolbox for calculating spring indices from daily meteorological data. Computers and Geosciences, 83, DOI: 10.1016/j.cageo.2015.06.015
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}

\examples{

daystop <- 240
lat <- 35.476 # latitude for OKC
daylen <- daylength(daystop=daystop,lat=lat)

tmax <- rep(65,daystop)
tmin <- rep(42,daystop)
bt <- 31

gdh <- c()

for(i in 1:daystop){
gdh[i] <- growdh(tmax[i],tmin[i],daylen[i],bt)
}

idx <- 60
lagidx <- idx - 1:7

laggdh <- gdh[lagidx]

result <- synval(gdh[idx],laggdh,type="leaf")

}

