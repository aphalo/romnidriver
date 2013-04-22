set.scans.to.avg <- function(jwrapper, n.scans=1L, sr.index=0L){
  jwrapper$setScansToAverage(as.integer(sr.index),as.integer(n.scans))
}
