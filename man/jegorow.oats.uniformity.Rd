\name{jegorow.oats.uniformity}
\alias{jegorow.oats.uniformity}
\docType{data}
\title{
  Uniformity trial of oats in Russia
}
\description{
  Uniformity trial of oats in Russia
}
\usage{data("jegorow.oats.uniformity")}
\format{
  A data frame with 240 observations on the following 3 variables.
  \describe{
    \item{\code{row}}{row ordinate}
    \item{\code{col}}{column ordinate}
    \item{\code{yield}}{yield per plot, kg}
  }
}
\details{

  At the Sumskaya (Ssumy?) agricultural experimental station (Kharkov
  Governorate), a field was planted in April 1908 and harvested that
  summer as plots 1 sazhen sqauare.  A 'sazhen' is 7 feet.
  
  Field width: 8 plots * 1 sazhen

  Field length: 30 plots * 1 sazhen

  Data typed by K.Wright from Roemer (1920), table 10.
  
}
\source{
  Jegorow, M. (1909).
  Zur Methodik des feldversuches.
  Russian Journ Expt Agric, 10, 502-520.
  Has a uniformity trial of oats. 
  https://www.google.com/books/edition/Journal_de_l_agriculture_experimentale/510jAQAAIAAJ?hl=en
}
\references{
  Neyman, J., & Iwaszkiewicz, K. (1935).
  Statistical problems in agricultural experimentation.
  Supplement to the Journal of the Royal Statistical Society, 2(2), 107-180.

  Roemer, T. (1920).
  Der Feldversuch.
  Arbeiten der Deutschen Landwirtschafts-Gesellschaft, 302.
  https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ
}
\examples{
\dontrun{
  library(agridat)
  
  data(jegorow.oats.uniformity)
  dat <- jegorow.oats.uniformity
  
  mean(dat$yield) # Jegorow reports 2.03

  libs(desplot)
  desplot(dat, yield~col*row, 
          aspect=10/24, flip=TRUE, tick=TRUE,
          main="jegorow.oats.uniformity")
}
}
\keyword{datasets}
