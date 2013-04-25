set.timeout <- function(jwrapper, time.millisec=1000L, sr.index=0L){
  jwrapper$setCorrectForElectricalDark(as.integer(sr.index),as.integer(time.millisec))
}
