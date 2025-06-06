\name{byers.apple}
\alias{byers.apple}
\docType{data}
\title{
  Diameters of apples
}
\description{
  Measurements of the diameters of apples
}

\format{
  A data frame with 480 observations on the following 6 variables.
  \describe{
    \item{\code{tree}}{tree, 10 levels}
    \item{\code{apple}}{apple, 24 levels}
    \item{\code{size}}{size of apple}
    \item{\code{appleid}}{unique id number for each apple}
    \item{\code{time}}{time period, 1-6 = (week/2)}
    \item{\code{diameter}}{diameter, inches}
  }
}
\details{
  Experiment conducted at the Winchester Agricultural Experiment Station
  of Virginia Polytechnic Institute and State University.   Twentyfive
  apples were chosen from each of ten apple trees.

  Of these, there were 80 apples in the largest size class, 2.75 inches
  in diameter or greater.

  The diameters of the apples were recorded every two weeks over a
  12-week period.
}
\source{
  Schabenberger, Oliver and Francis J. Pierce. 2002.
  \emph{Contemporary Statistical Models for the Plant and Soil
    Sciences}. CRC Press, Boca Raton, FL.
}

\examples{
\dontrun{
  
  library(agridat)
  data(byers.apple)
  dat <- byers.apple

  libs(lattice)
  xyplot(diameter ~ time | factor(appleid), data=dat, type=c('p','l'),
         strip=strip.custom(par.strip.text=list(cex=.7)),
         main="byers.apple")

  # Overall fixed linear trend, plus random intercept/slope deviations
  # for each apple.  Observations within each apple are correlated.
  libs(nlme)
  libs(lucid)
  m1 <- lme(diameter ~ 1 + time, data=dat,
            random = ~ time|appleid, method='ML',
            cor = corAR1(0, form=~ time|appleid),
            na.action=na.omit)
  vc(m1)
  ##       effect   variance   stddev corr
  ##  (Intercept) 0.007354   0.08575    NA
  ##         time 0.00003632 0.006027 0.83
  ##     Residual 0.0004555  0.02134    NA
}

}
\keyword{datasets}
