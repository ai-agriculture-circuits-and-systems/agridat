\name{kalamkar.potato.uniformity}
\alias{kalamkar.potato.uniformity}
\docType{data}
\title{
  Uniformity trial of potatoes
}
\description{
  Uniformity trial of potatoes at Saskatchewan, Canada, 1929.
}
\usage{data("kalamkar.potato.uniformity")}
\format{
  A data frame with 576 observations on the following 3 variables.
  \describe{
    \item{\code{row}}{row}
    \item{\code{col}}{column}
    \item{\code{yield}}{yield, pounds per plot}
  }
}
\details{
  The data is for potato yields in 96 rows, each 132 feet long, with 3
  feet between rows.

  Each row was harvested as six plots, each 22 feet long.  Each hill had
  one seed piece.  Hills were spaced 2 feet apart in each row.

  Field width: 6 plots * 22 feet = 132 feet

  Field length: 96 rows * 3 feet = 288 feet

  Units of yield are not given.  In this experiment, there were 22
  plants per plot. Today potato plants yield 3-5 pounds.
  If we assume this experiment had a yield of about 2 pound per plant,
  that would be 22 pounds per plot, which is similar to the data
  values. Also, Kirk 1929 mentions "200 bushels per acre", and 22 pounds
  per plot x (43560/66) divided by (60 pounds per bushel) = 242, so this
  seems reasonable.  Also the `kirk.potato` data by the same author was
  recorded in pounds per plot.
}
\source{
  Kalamkar, R.J. (1932).
  Experimental Error and the Field-Plot Technique with Potatoes.
  The Journal of Agricultural Science, 22, 373-385.
  https://doi.org/10.1017/S0021859600053697
}
\references{
  Kirk, L. E. (1929)
  Field plot technique with potatoes with special reference to the Latin
  square.
  Scientific Agriculture, 9, 719.
  https://cdnsciencepub.com/doi/10.4141/sa-1929-0067
  https://doi.org/10.4141/sa-1929-0067
  https://www.google.com/books/edition/Revue_Agronomique_Canadien/-gMkAQAAMAAJ
}
\examples{
\dontrun{

library(agridat)
data(kalamkar.potato.uniformity)
dat <- kalamkar.potato.uniformity

# Similar to figure 1 of Kalamkar
libs(desplot)
desplot(dat, yield~col*row,
        flip=TRUE, tick=TRUE, aspect=288/132, # true aspect
        main="kalamkar.potato.uniformity")
  
}
}
\keyword{datasets}
