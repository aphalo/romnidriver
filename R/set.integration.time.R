set.integration.time <- function(jwrapper, time.usec=100L, sr.index=0L){
  jwrapper$setIntegrationTime(as.integer(sr.index), as.integer(time.usec))
}