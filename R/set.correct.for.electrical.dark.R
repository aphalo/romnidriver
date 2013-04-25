set.correct.for.electrical.dark <- function(jwrapper, enable=0L, sr.index=0L){
  jwrapper$setCorrectForElectricalDark(as.integer(sr.index),as.integer(enable))
}
