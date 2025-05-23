\name{christidis.cotton.uniformity}
\alias{christidis.cotton.uniformity}
\docType{data}
\title{
  Uniformity trial of cotton
}
\description{
  Uniformity trial of cotton in Greece, 1938
}
\usage{data("christidis.cotton.uniformity")}
\format{
  A data frame with 1024 observations on the following 4 variables.
  \describe{
    \item{\code{col}}{column}
    \item{\code{row}}{row}
    \item{\code{yield}}{yield, kg/unit}
    \item{\code{block}}{block factor}
  }
}
\details{
  The experiment was conducted in 1938 at Sindos by the Greek Cotton Research Institute.

  Each block consisted of 20 rows, 1 meter apart and 66 meters long. Two
  rows on each side and 1 meter on each end were removed for
  borders. Each row was divided into 4 meter-lengths and harvested
  separately.  There were 4 blocks, oriented at 0, 30, 60, 90 degrees.

  Each block contained 16 rows, each 64 meters long.

  Field width: 16 units * 4 m = 64 m

  Field depth: 16 rows * 1 m = 16 m

}
\source{
  Christidis, B. G. (1939).
  Variability of Plots of Various Shapes as Affected by Plot Orientation.
  Empire Journal of Experimental Agriculture 7: 330-342. Table 1.
}
\references{
  None
}
\examples{
\dontrun{

library(agridat)
data(christidis.cotton.uniformity)
dat <- christidis.cotton.uniformity
  
# Match the mean yields in table 2. Not sure why '16' is needed
# sapply(split(dat$yield, dat$block), mean)*16
  
libs(desplot)
dat$yld <- dat$yield/4*1000 # re-scale to match Christidis fig 1
desplot(dat, yld ~ col*row|block,
        flip=TRUE, aspect=(16)/(64),
        main="christidis.cotton.uniformity")

}  
}
\keyword{datasets}
