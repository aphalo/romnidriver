library(rOO)
w <- init.srs()
n <- number.srs(w)
spc <- get.raw.spectrum(w,0)
set.scans.to.avg(w,2)
set.integration.time(w,5000000)
spc <- get.raw.spectrum(w)
spc
close.srs(w)