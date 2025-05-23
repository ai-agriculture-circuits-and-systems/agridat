\name{weiss.incblock}
\alias{weiss.incblock}
\docType{data}
\title{
  Soybean balanced incomplete block experiment
}
\description{
  Soybean balanced incomplete block experiment
}
\usage{data("weiss.incblock")}
\format{
  A data frame with 186 observations on the following 5 variables.
  \describe{
    \item{\code{block}}{block factor}
    \item{\code{gen}}{genotype (variety) factor}
    \item{\code{yield}}{yield (bu/ac)}
    \item{\code{row}}{row}
    \item{\code{col}}{column}
  }
}
\details{
  Grown at Ames, Iowa in 1937.  Each plot was 6 feet by 16 feet (2 rows,
  3 feet apart).  Including space between plots, the entire experiment
  was 252 ft x 96 feet (7 block * 6 plots * 6 feet = 252, 16*5 plots
  plus 4 gaps of 4 feet).  Weiss shows a figure of the field (that was
  later doubled in dize via using two rows per plot).

  Note that only 30 varieties were tested.  Varieties 7 and 14 are the
  same variety (Mukden).  Although total yields of these varieties were
  not equal, the correction for blocks adjusted their means to identical
  values. Such accuracy is not, however, claimed to be a constant
  characteristic of the design.

  Field width: 96 feet
  
  Field length: 252 feet

}

\source{
  Weiss, Martin G. and Cox, Gertrude M. (1939).
  Balanced Incomplete Block and Lattice Square Designs for Testing Yield
  Differences Among Large Numbers of Soybean Varieties.
  \emph{Agricultural Research Bulletins, Nos. 251-259}.
  https://lib.dr.iastate.edu/ag_researchbulletins/24/
}

\examples{
\dontrun{

  library(agridat)
  data(weiss.incblock)
  dat <- weiss.incblock

  # True aspect as shown in Weiss and Cox
  libs(desplot)
  desplot(dat, yield~col*row,
          text=gen, shorten='none', cex=.6, out1=block,
          aspect=252/96, # true aspect
          main="weiss.incblock")
  

  if(require("asreml", quietly=TRUE)){
    # Standard inc block analysis used by Weiss and Cox
    libs(asreml)
    m1 <- asreml(yield ~ gen + block , data=dat)
    predict(m1, data=dat, classify="gen")$pvals
    
    ## gen pred.value std.error est.stat
    ## G01     24.59    0.8312  Estimable
    ## G02     26.92    0.8312  Estimable
    ## G03     32.62    0.8312  Estimable
    ## G04     26.97    0.8312  Estimable
    ## G05     26.02    0.8312  Estimable
  }

}
}
\keyword{datasets}
