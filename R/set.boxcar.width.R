set.boxcar.width <- function(jwrapper, half.width.px=1L, sr.index=0L){
  jwrapper$setBoxcarWidth(as.integer(sr.index),as.integer(half.width.px))
}
