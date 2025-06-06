\name{shaw.oats}
\alias{shaw.oats}
\docType{data}
\title{
  Multi-environment trial of oats in India
}
\description{
  Multi-environment trial of oats in India, 13 genotypes, 3 year, 2 loc,
  5 reps
}
\usage{data("shaw.oats")}
\format{
  A data frame with 390 observations on the following 5 variables.
  \describe{
    \item{\code{env}}{environment, 2 levels}
    \item{\code{year}}{year, 3 levels}
    \item{\code{block}}{block, 5 levels}
    \item{\code{gen}}{genotype variety, 13 levels}
    \item{\code{yield}}{yield of oats, pounds per plot}
  }
}
\details{
  An oat trial in India of 11 hybrid oats compared to 2 established
  high-yielding varieties, labeled L and M. The trail was conducted at 2
  locations. The size and exact locations of the plots varied from year
  to year.

  At Pusa, the crop was grown without irrigation. At Karnal the crop was
  given 2-3 irrigations. Five blocks were used, each plot 1000 square
  feet. In 1932, variety L was high-yielding at Pusa, but low-yielding
  at Karnal.

  Shaw used this data to illustrate ANOVA for a multi-environment trial.
}
\source{
  F.J.F. Shaw (1936).
  A Handbook of Statistics For Use In Plant Breeding and Agricultural Problems.
  The Imperial Council of Agricultural Research, India.
  https://archive.org/details/HandbookStatistics1936/page/n12
  P. 126
}
\references{
  None
}
\examples{
\dontrun{

library(agridat)
data(shaw.oats)
dat <- shaw.oats
# sum(dat$yield) # 16309 matches Shaw p. 125
# sum( (dat$yield-mean(dat$yield)) ^2) # total SS matches Shaw p. 141

dat$year <- factor(dat$year)
libs(lattice)

dotplot(yield ~ gen|env, data=dat, groups=year,
        main="shaw.oats",
        par.settings=list(superpose.symbol=list(pch=c('2','3','4'))),
        panel=function(x,y,...){
          panel.dotplot(x,y,...)
          panel.superpose(x,y,..., panel.groups=function(x,y,col.line,...) {
            dd<-aggregate(y~x,data.frame(x,y),mean)
            panel.xyplot(x=dd$x, y=dd$y, col=col.line, type="l")
          })},
        auto.key=TRUE)



# Shaw & Bose meticulously calculate the ANOVA table, p. 141
m1 <- aov(yield ~ year*env*block*gen - year:env:block:gen, dat)
anova(m1)

}
}
\keyword{datasets}
