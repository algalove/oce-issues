if (!interactive()) png("413B.png", width=5, height=5, unit="in", res=150, pointsize=9)
library(oce)
#source('~/src/oce/R/imagep.R')

## Try a range of thinner palette regions.  NOTE: the space to the right
## of the main image is dictated by the initial par("mar"), which is of course
## not adjusted by this procedure.  Try e.g.
##       par(mar=c(3, 3, 1, 1))
## to tighten things up.

d <- 0.14
d <- 0.13
d <- 0.12
d <- 0.11
d <- 0.10
d <- 0.09
d <- 0.08
d <- 0.07

par(c('mai','pin','fin')) # before layout
layout(matrix(1:4,nrow=2,byrow=TRUE), widths=c(1-d,d))
omai <- par('mai')
par(c('mai','pin','fin')) # after layout

image(volcano, col=oceColorsJet(100), zlim=c(90, 200))
par(c('mai','pin','fin')) # after image 1
drawPalette(c(90, 200), fullpage=TRUE, col=oceColorsJet, debug=4)
par(c('mai','pin','fin')) # after palette 1 

image(volcano, col=oceColorsJet(100), zlim=c(90, 200))
par(c('mai','pin','fin')) # after image 2
drawPalette(c(90, 200), fullpage=TRUE, col=oceColorsJet, debug=4)
par(c('mai','pin','fin')) # after palette 2 

if (!interactive()) dev.off()

