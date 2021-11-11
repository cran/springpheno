\name{freezedates}
\alias{freezedates}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Freeze Date Calculator
}
\description{
This function determines when freezes occur during the year given the daily low temperature data, freeze threshold, and the day of year.
}
\usage{
freezedates(tasmin, frzval, DOY)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tasmin}{
Vector - daily low temperature data (degrees Fahrenheit). The vector should have a length of 366.
}
  \item{frzval}{
Scalar - freeze threshold (degrees Fahrenheit). Typically this is 28F.
}
  \item{DOY}{
Vector - day of year (1:366)
}
}

\value{
The output from this function is a list with the following:

\item{firstfreeze}{
Scalar - day of year matching the first freeze that occurs in the fall.
}
\item{lastfreeze}{
Scalar - day of year matching the last freeze that occurs in the spring.
}
\item{freezeperiod}{
Scalar - range of days between the first and last freeze.
}
\item{freezedata}{
Data Frame - Table containing the values for low temperature (tasmin), Day of year (DOY), and adjusted Day of Year (DOYadj) for those days of the year where a freeze occurs.
}
}

\author{
Adrienne M. Wootten (University of Oklahoma)
}

