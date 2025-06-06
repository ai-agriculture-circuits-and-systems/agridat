\name{buntaran.wheat}
\alias{buntaran.wheat}
\docType{data}
\title{
Multi-environment trial of wheat in Sweden in 2016.
}
\description{
Multi-environment trial of wheat in Sweden in 2016.
}
\usage{data("buntaran.wheat")}
\format{
  A data frame with 1069 observations on the following 7 variables.
  \describe{
    \item{\code{zone}}{Geographic zone: south, middle, north}
    \item{\code{loc}}{Location}
    \item{\code{rep}}{Block replicate (up to 4)}
    \item{\code{alpha}}{Incomplete-block in the alpha design}
    \item{\code{gen}}{Genotype (cultivar)}
    \item{\code{yield}}{Dry matter yield, kg/ha}
  }
}
\details{
  Dry matter yield from wheat trials in Sweden in 2016. The experiments
  in each location were multi-rep with incomplete blocks in an alpha
  design.
  
  Electronic data are from the online supplement of Buntaran (2020) and also from the "init" package at https://github.com/Flavjack/inti.
}
\source{
  Buntaran, Harimurti et al. (2020).
  Cross-validation of stagewise mixed-model analysis of Swedish variety trials with winter wheat and spring barley.
  Crop Science, 60, 2221-2240.
  http://doi.org/10.1002/csc2.20177
}
\references{
  None.
}
\examples{
\dontrun{
data(buntaran.wheat)
library(agridat)
dat <- buntaran.wheat
library(lattice)
bwplot(yield~loc|zone, dat, layout=c(1,3),
       scales=list(x=list(rot=90)),
       main="buntaran.wheat")
}
}
\keyword{datasets}
