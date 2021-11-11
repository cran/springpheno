\name{leafindex}
\alias{leafindex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Leaf Index Calculator
}
\description{
This function calculates either the First Leaf Index (FLI) or the First Bloom Index (FBI). The calculation of the FLI and FBI follows that described by the original Matlab code (Ault et al. 2015) with the correction implemented by Allstadt et al. (2015).
}
\usage{
leafindex(tasmax, tasmin, daylen, baset, refdate,
type = "leaf", plant = 1, verbose = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tasmax}{
Vector - daily high temperatures for a given year (degrees F)
}
  \item{tasmin}{
Vector - daily low temperatures for a given year (degrees F)
}
  \item{daylen}{
Vector - daylength for each day for a given year (recommended from the daylength function)
}
  \item{baset}{
Scalar - base temperature for growing degree hours calculation (Typically this is 31 degrees F)
}
  \item{refdate}{
Scalar - reference day of year at which to begin calculations. For the FLI, refdate should equal 1. For the FBI, refdate should equal the FLI.
}
  \item{type}{
Either "leaf" (default) or "bloom" to calculate the FLI or FBI respectively.
}
  \item{plant}{
Scalar - a value of 1 (default), 2, or 3 to match the appropriate plant for the FLI. For plant=1, the plant is lilac. For plant=2, the plant is arnold red. For plant=3, the plant is zabelli
}
  \item{verbose}{
Logical - either TRUE or FALSE (default). If set to TRUE, the function will print more information. Helpful for debugging issues.
}
}

\value{
If verbose=FALSE, then the output is the day of year corresponding to first leaf or first bloom depending on the user inputs.
if verbose=TRUE, then the output is a list with the following:
\item{OUTDOY}{
Scalar - day of year corresponding to first leaf or first bloom depending on the user inputs.
}
\item{parametersout}{
Matrix - values for all the parameters used in the calculation of FLI and FBI. This matrix is 366 rows by 6 columns. The 366 rows correspond to each day of year. Values will exist in the table from the reference date (refdate) to the day of first leaf or first bloom. Values are NA otherwise. The columns correspond to each of the following parameters, 1) number of days since the reference date, 2) total number of accumulated synoptic events, 3) sum of growing degree hours for the current day and previous two days, 4) sum of growing degree hours for 5-7 days prior to the current day, 5) accumulated growing degree hours, 6) growing degree hours for the current day.
}
\item{lagGDHvals}{
Matrix - values of lag growing degree hours for 1-7 days prior to the current day. This is 366 rows by 7 columns. One row for each day of the year, one column for each lag of growing degree hours (column 1 is a lag of 1 day, column 7 is a lag of 7 days).
}

}
\references{
Allstadt, A.J., S.J. Vavrus, P.J. Heglund, A.M Pidgeon, W. E. Thogmartin and V.C. Radeloff, 2015: Spring plant
    phenology and false springs in the conterminous US during the 21st century. Environmental Research Letters,
    10, DOI: 10.1088/1748-9326/10/10/104008

Ault, T.R., R. Zurita-Miller and M. Schwarz, 2015: A Matlab© toolbox for calculating spring indices from daily
    meteorological data. Computers and Geosciences, 83, DOI: 10.1016/j.cageo.2015.06.015
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}

\examples{

data("BatonRouge")
RESULTS = calc_si(TMAX,TMIN,lat) # calc_si runs all SI-x calculations

####
# Plotting First Leaf Index
oldpar <- par(mfrow = c(1,1))
ylimrange = range(RESULTS$FLImat)
ylimrange[1]=ylimrange[1]-10
ylimrange[2]=ylimrange[2]+10
plot(RESULTS$FLImat[,1]~YEAR,type="b",pch=19,lwd=2,ylim=ylimrange)

#####
# Plotting First Bloom Index
ylimrange = range(RESULTS$FBImat)
ylimrange[1]=ylimrange[1]-10
ylimrange[2]=ylimrange[2]+10
plot(RESULTS$FBImat[,1]~YEAR,type="b",pch=19,lwd=2,ylim=ylimrange)

#####
# Plotting Day of Last Freeze
ylimrange = range(RESULTS$lastfreeze)
ylimrange[1]=ylimrange[1]-10
ylimrange[2]=ylimrange[2]+10
plot(RESULTS$lastfreeze~YEAR,type="b",pch=19,lwd=2,ylim=ylimrange)

#####
# Plotting False Springs
ylimrange = range(RESULTS$FSmat)
ylimrange[2]=ylimrange[2]+0.5
par(mfrow=c(2,1))
plot(RESULTS$FSmat[,1]~YEAR,type="b",pch=19,ylim=ylimrange)
plot(RESULTS$FSmat[,2]~YEAR,type="b",pch=19,ylim=ylimrange)

par(oldpar)

}
