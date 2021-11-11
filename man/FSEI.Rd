\name{FSEI}
\alias{FSEI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
False Spring Exposure Index
}
\description{
Given the false spring indicators for multiple years, this function calculate the False Spring Exposure Index (FSEI). This is calculated according to the methodology of Peterson and Abatzoglou (2014). If early false spring indicators are provided, then this function calculates the FSEI for the early false spring. Providing the late false spring indicators will allow the function to calculate the FSEI for the late false spring.
}
\usage{
FSEI(falsespringvector)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{falsespringvector}{
Vector - the false spring indicators for multiple years. This forms a vector of length N, for the N years used. This can be either early or late false spring indicators.
}
}

\value{
The output is a scalar with the value of the FSEI. The larger the value, the more like the location will be exposed to a false spring.
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

