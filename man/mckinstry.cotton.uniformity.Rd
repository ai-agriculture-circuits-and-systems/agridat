\name{mckinstry.cotton.uniformity}
\alias{mckinstry.cotton.uniformity}
\docType{data}
\title{
  Uniformity trial of cotton in South Rhodesia
}
\description{
    Uniformity trial of cotton in South Rhodesia
}
\usage{data("mckinstry.cotton.uniformity")}
\format{
  A data frame with 480 observations on the following 3 variables.
  \describe{
    \item{\code{row}}{row ordinate}
    \item{\code{col}}{column ordinate}
    \item{\code{yield}}{yield per plot, ounces}
  }
}
\details{

A uniformity trial of cotton from an experiment in Gatooma, South
Rhodesia. Conducted by the Empire Cotton Growing Corporation. Planted
Nov 1934. Harvested Jun 1935.

Field length: 20 rows x 25 feet.

Field width: 24 columns x 3.5 feet.

Crop History: season good until peak flowering - good growth, heavy
flowering - then 5 weeks drought in critical period for crop, aggravated
by exceptionally heavy aphis attack and heavy boll-worm attack
accounts.

Lay-out: At harvest, a block of 24 rows x 500 ft, and each row marked
into 20 lengths of 25 ft each, giving 480 small plots. If any use is to
be made of these data it would be advisable to ignore the row 1 and row
20, as both of these are bordering roads.

This data was made available with special help from the staff at
Rothamsted Research Library.

}
\source{
  Rothamsted Research Library, Box STATS17  WG Cochran, Folder 5.
}
\references{
  None
}
\examples{

library(agridat)
data(mckinstry.cotton.uniformity)
dat <- mckinstry.cotton.uniformity

libs(desplot)
desplot(dat, yield ~ col*row,
        flip=TRUE, tick=TRUE, aspect=(20*25)/(24*3.5),
        main="mckinstry.cotton.uniformity")
}
\keyword{datasets}
