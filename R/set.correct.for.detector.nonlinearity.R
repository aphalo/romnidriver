set.correct.for.detector.nonlinearity <- function(jwrapper, correct=0L, sr.index=0L){
  jwrapper$setCorrectForDetectorNonlinearity(as.integer(sr.index),as.integer(correct))
}
