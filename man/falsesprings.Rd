\name{falsesprings}
\alias{falsesprings}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
False Spring Indicators
}
\description{
Given the information about the first leaf, first bloom, and freeze events, this function determines if an early false spring and late false spring occurred. The calculations here are based on the work of Peterson and Abatzoglou (2014) and Allstadt et al. (2015).
}
\usage{
falsesprings(SI = c(60, 65), freezedata)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SI}{
Vector - the first leaf index (FLI) and first bloom index (FBI) in a vector. The FLI should always be the first item in the vector. Defaults to 60 and 65, but these are randomly chosen and should be replaced with values calculated by leafindex.
}
  \item{freezedata}{
Data frame - table of low temperatures, day of year, and adjusted day of year for all the freeze days of a given year. This is calculated by the freezedates function.
}
}

\value{
The output is a list with two items:

 \item{EFS}{
Scalar - Early False Spring indicator. This equals 1 if an early false spring occurred, 0 otherwise.
}
  \item{LFS}{
Scalar - Late False Spring indicator. This equals 1 if a late false spring occurred, 0 otherwise.
}

}
\references{
Allstadt, A.J., S.J. Vavrus, P.J. Heglund, A.M Pidgeon, W. E. Thogmartin and V.C. Radeloff, 2015: Spring plant
    phenology and false springs in the conterminous US during the 21st century. Environmental Research Letters,
    10, DOI: 10.1088/1748-9326/10/10/104008

Peterson, A.G. and J.T. Abatzoglou, 2014: Observed changes in false springs over the contiguous United States.
    Geophysical Research Letters, 41, DOI: 10.1002/2014GL059266

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

