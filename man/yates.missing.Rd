\name{yates.missing}
\alias{yates.missing}
\docType{data}
\title{
  Factorial experiment of potato, 3x3 with missing values
}
\description{
  Factorial experiment of potato, 3x3 with missing values.
}

\format{
  A data frame with 80 observations on the following 3 variables.
  \describe{
    \item{\code{trt}}{treatment factor, 8 levels}
    \item{\code{block}}{block, 10 levels}
    \item{\code{y}}{infection intensity}
    \item{\code{n}}{nitrogen treatment, 2 levels}
    \item{\code{p}}{phosphorous treatment, 2 levels}
    \item{\code{k}}{potassium treatment, 2 levels}
   
  }
}
\details{
  The response variable \code{y} is the intensity of infection of potato
  tubers innoculated with \emph{Phytophthora Erythroseptica}.

  There were 3 treatment factors:

  2 nitrogen levels

  2 phosphorous levels

  2 potassium levels

  
  Yates (1933) presents an iterative algorithm to estimate missing
  values in a matrix, using this data as an example.
}

\source{
  F. Yates (1933).
  The analysis of replicated experiments when the field results are incomplete.
  Emp. J. Exp. Agric., 1, 129--142.
}

\references{
  Steel & Torrie (1980).
  Principles and Procedures of Statistics, 2nd Edition, page 212.
}

\examples{
\dontrun{

library(agridat)
data(yates.missing)
dat <- yates.missing

libs(lattice)
bwplot(y ~ trt, data=dat,
       xlab="Treatment", ylab="Infection intensity",
       main="yates.missing")

libs(reshape2)
mat0 <- acast(dat[, c('trt','block','y')], trt~block,
               id.var=c('trt','block'), value.var='y')

# Use lm to estimate missing values.  The estimated missing values
# are the same as in Yates (1933)
m1 <- lm(y~trt+block, dat)
dat$pred <- predict(m1, new=dat[, c('trt','block')])
dat$filled <- ifelse(is.na(dat$y), dat$pred, dat$y)
mat1 <- acast(dat[, c('trt','block','pred')], trt~block,
               id.var=c('trt','block'), value.var='pred')


# Another method to estimate missing values via PCA
libs("nipals")
m2 <- nipals(mat0, center=FALSE, ncomp=3, fitted=TRUE)
# mat2 <- m2$scores %*% t(m2$loadings)
mat2 <- m2$fitted

  # See also pcaMethods::svdImpute
  
  # Compare
  ord <- c("0","n","k","p","nk","np","kp","nkp")
  print(mat0[ord,], na.print=".")
  round(mat1[ord,] ,2)
  round(mat2[ord,] ,2)
  
  # mat2 SVD with 3 components recovers original data better than
  # mat1 from lm()
  sum((mat0-mat1)^2, na.rm=TRUE)
  sum((mat0-mat2)^2, na.rm=TRUE) # Smaller SS => better fit
}
}

