\name{day.wheat.uniformity}
\alias{day.wheat.uniformity}
\docType{data}
\title{
Uniformity trial of wheat
}
\description{
Uniformity trial of wheat in 1903 in Missouri.
}
\usage{data("day.wheat.uniformity")}
\format{
  A data frame with 3090 observations on the following 4 variables.
  \describe{
    \item{\code{row}}{row}
    \item{\code{col}}{col}
    \item{\code{grain}}{grain weight, grams per plot}
    \item{\code{straw}}{straw weight, grams per plot}
  }
}

\details{
  
  These data are from the Shelbina field of the Missouri Agricultural
  Experiment Station. The field (plat) was about 1/4 acre in area and
  apparently uniform throughout. In the fall of 1912, wheat was drilled
  in rows 8 inches apart, each row 155 feet long. The wheat was
  harvested in June, in 5-foot segments. The gross weight and the grain
  weight was measured, the straw weight was calculated by subtraction. 

  Field width: 31 series * 5 feet = 155 feet

  Field length: 100 rows, 8 inches apart = 66.66 feet

}

\source{
  James Westbay Day (1916).
  The relation of size, shape, and number of replications of plats to
  probable error in field experimentation.
  Dissertation, University of Missouri. Table 1, page 22.
  https://hdl.handle.net/10355/56391
}

\references{
  James W. Day (1920).
  The relation of size, shape, and number of replications of plats to
  probable error in field experimentation.
  \emph{Agronomy Journal}, 12, 100-105.
  https://doi.org/10.2134/agronj1920.00021962001200030002x
}
\examples{
\dontrun{

library(agridat)
data(day.wheat.uniformity)
dat <- day.wheat.uniformity

libs(desplot)
desplot(dat, grain~col*row,
        flip=TRUE, aspect=(100*8)/(155*12), # true aspect
        main="day.wheat.uniformity - grain yield")
  
# similar to Day table IV
libs(lattice)
xyplot(grain~straw, data=dat, main="day.wheat.uniformity", type=c('p','r'))
# cor(dat$grain, dat$straw) # .9498 # Day calculated 0.9416
  
libs(desplot)
desplot(dat, straw~col*row,
        flip=TRUE, aspect=(100*8)/(155*12), # true aspect
        main="day.wheat.uniformity - straw yield")
  
# Day fig 2
coldat <- aggregate(grain~col, dat, sum) 
xyplot(grain ~ col, coldat, type='l', ylim=c(2500,6500))
dat$rowgroup <- round((dat$row +1)/3,0)
rowdat <- aggregate(grain~rowgroup, dat, sum) 
xyplot(grain ~ rowgroup, rowdat, type='l', ylim=c(2500,6500))

}  
}
\keyword{datasets}
