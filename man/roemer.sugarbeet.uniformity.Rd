\name{roemer.sugarbeet.uniformity}
\alias{roemer.sugarbeet.uniformity}
\docType{data}
\title{
  Uniformity trial of sugar beets
}
\description{
  Uniformity trial of sugar beets
}
\usage{data("roemer.sugarbeet.uniformity")}
\format{
  A data frame with 192 observations on the following 4 variables.
  \describe{
    \item{\code{row}}{row ordinate}
    \item{\code{col}}{column ordinate}
    \item{\code{yield}}{yield per plot, kg}
    \item{\code{year}}{year of experiment}
  }
}
\details{
  
  Roemer p 27: 

  Eigene Versuche mit Zuckerrüben, ausgeführt auf dem Neßthaler
  Zuchtfeld des Kaiser-Wilhelm-Institutes, Bromberg, in den Jahren 1916,
  1917 und 1918. 1916 und 1918 war die Versuchsfläche ein und dieselbe,
  6,80 a groß und in den beiden Jahren mit Original Klein-Wanzlebener
  Zuckerrüben auf 30 X 40 cm bebaut. Vorfrucht für 1916 war Hafer, für
  1918 Roggen; 1917 war eine andere Fläche, ebenfalls 6,80 a groß, für
  den Versuch benußt; gesät wurden zwei verschiedene Zuchten von Strube,
  Schlanstedt. Beide Flächen sind von sehr gleichmäßiger
  Bodenbeschaffenheit. Bei der Fläche 1916 und 1918 machte sich im
  ersten Jahre bei den Reihen 31-33 eine geringe Stelle bemerkbar, die
  1918 weit weniger in Erscheinung trat. Die Bodenunterschiede sind in
  allen drei Jahren geringer als die durch die Versuchstechnik bedingten
  Fehler. 

  Translated: Own (Roemer) experiments with sugar beets, carried out on
  the Neßthal breeding field of the Kaiser Wilhelm Institute, Bromberg,
  in the years 1916, 1917 and 1918. In 1916 and 1918 the test area was
  one and the same, 6.80 are large and with original in both years
  Klein-Wanzleben sugar beets cultivated on 30 x 40 cm. The previous
  crop for 1916 was oats, for 1918 it was rye; In 1917 another area,
  also 6.80 a large, was used for the experiment; Two different
  varieties from Strube, Schlanstedt were sown. Both areas have very
  uniform soil conditions. In the 1916 and 1918 area, a small spot was
  noticeable in rows 31-33 in the first year, which was much less
  noticeable in 1918. In all three years the soil differences are
  smaller than the errors caused by the experimental technology. 

  Field width: 2 plots * 17 m = 34 m

  Field length: 48 plots * 4.17 m = 200 m

  Total area = 34 m * 200 m = 6800 sq m = 6.8 are.
  
  Cochran says: 96 plots, each 1 row x 55.8 ft (17m).
  Two sets (years) 1916 and 1918.

  Data were typed by K.Wright from Roemer (1920).
}
\source{
  Roemer, T. (1920).
  Der Feldversuch.
  Arbeiten der Deutschen Landwirtschafts-Gesellschaft, 302.
  Table 1, page 62.
  https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ
}
\references{
  Neyman, J., & Iwaszkiewicz, K. (1935).
  Statistical problems in agricultural experimentation.
  Supplement to the Journal of the Royal Statistical Society, 2(2), 107-180.
}
\examples{
\dontrun{
  
library(agridat)
data(roemer.sugarbeet.uniformity)
dat <- roemer.sugarbeet.uniformity

libs(desplot)
desplot(dat, yield~col*row|year,
        aspect=(48*4.16)/(2*17), flip=TRUE, tick=TRUE,
        main="roemer.sugarbeet.uniformity")

}
}
\keyword{datasets}
