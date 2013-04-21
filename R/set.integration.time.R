set.integration.time <- function(jwrapper, time.usec=100, sr.index=0){
  jwrapper$setIntegrationTime(sr.index, time.usec)
}