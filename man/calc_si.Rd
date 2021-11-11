\name{calc_si}
\alias{calc_si}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Spring Index Calculator
}
\description{
Given the multiple years of daily high and low temperatures and the latitude for the location, this function will calculate the extended spring indices (SI-x, Schwarz et al. 2006; Schwarz et al. 2013), false spring indicators, and the early and late false spring exposure indices (EFSEI, LFSEI, Peterson and Abatzoglou, 2014; Allstadt et al. 2015). The extended spring indices are calculated in a similar manner to Ault et al. (2015) with the correction implemented as suggested by Allstadt et al. (2015).
}
\usage{
calc_si(TMAX, TMIN, lat,missingcalc="mean")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{TMAX}{
Matrix - daily high temperatures (degrees Fahrenheit). This is matrix of 366 rows (on per each day of year) and N columns (representing the total number of years). There should always be 366 days supplied to this function, as the SI-x will calculate a replacement for missing values and leap days during non-leap years.
}
  \item{TMIN}{
Matix - daily low temperatures (degrees Fahrenheit). This should be the same size and structure as TMAX.
}
  \item{lat}{
Scalar - latitude of the location of interest in decimal degrees.
}
  \item{missingcalc}{
Scalar - character which signifies which approach will be taken to address missing values. The current options are "mean" (default) and "loess". The "mean" option means that calc_si will use the monthly mean to replace missing values which appear during the same month. The "loess" option means that calc_si will use a loess regression to estimate missing temperature values.
}
}
\details{
While each individual function in the springpheno package can be run
independently, the calc_si function does wrap through all the associated
functions in the springpheno package and produce results from all functions.
}
\value{
The output is a list containing the following:

 \item{FLImat}{
Matrix - First Leaf Index (FLI). This is a matrix of N rows (one row per year) by 4 columns. The 4 columns correspond to the mean first leaf and the first leaf for plants 1-3 [mean,plant 1, plant 2, plant 3]
}
 \item{FBImat}{
Matrix - First Bloom Index (FBI). This is a matrix of N rows (one row per year) by 4 columns. The 4 columns correspond to the mean first bloom and the first bloom for plants 1-3 [mean,plant 1, plant 2, plant 3]
}
 \item{DMGmat}{
Matrix - Damage Index (days). This is a matrix of N rows (one row per year) by 4 columns. The 4 columns correspond to the mean damage index and the damage index for plants 1-3 [mean,plant 1, plant 2, plant 3]
}
 \item{lastfreeze}{
Vector - Day of Last Spring Freeze. This is a vector of length N years holding the last spring freeze for each year of data supplied to calc_is
}
  \item{FSmat}{
Matrix - False Spring Indicators. This is a matrix of N rows (one row per year) by 2 columns. The two columns represent each of the false spring indicators [early false spring, late false spring]. A value of 1 in either column represents that a false spring occurred. A value of 0 represents that a false spring did not occur.
}
\item{FSEImat}{
Vector - False Spring Exposure Index. This is a vector of length 2. There is one value of FSEI each for the early and late false springs. [early FSEI, late FSEI].
}


}
\references{
Allstadt, A.J., S.J. Vavrus, P.J. Heglund, A.M Pidgeon, W. E. Thogmartin and V.C. Radeloff, 2015: Spring plant
    phenology and false springs in the conterminous US during the 21st century. Environmental Research Letters,
    10, DOI: 10.1088/1748-9326/10/10/104008

Ault, T.R., R. Zurita-Miller and M. Schwarz, 2015: A Matlab© toolbox for calculating spring indices from daily
    meteorological data. Computers and Geosciences, 83, DOI: 10.1016/j.cageo.2015.06.015

Peterson, A.G. and J.T. Abatzoglou, 2014: Observed changes in false springs over the contiguous United States.
    Geophysical Research Letters, 41, DOI: 10.1002/2014GL059266

Schwarz, M., R. Ahas and A. Aasa, 2006: Onset of spring starting earlier across the Northern Hemisphere, 12,
    DOI: 10.1111/j.1365-2486.2005.01097.x

Schwarz, M., T.R. Ault and J.L. Betancourt, 2013: Spring onset variations and trends in the continental United
    States: Past and regional assessment using temperature-based indices. International Journal of Climatology,
    33, DOI: 10.1002/joc.3625
}
\author{
Adrienne M. Wootten (University of Oklahoma)
}
\note{
Thresholds for base temperature (baset=31) and freezing temperature (frzval=28) are fixed in this code. This matches Ault et al. (2015), but it could be changed to an extra argument for this function in later versions.

FSmat and FSEImat are current calculated using the first values of FLImat and FBImat. This is also consistent with prior code, but could be altered to provide the FSmat and FSEImat based on all four values of FLImat and FBImat.
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
