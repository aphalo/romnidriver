get.raw.spectrum <- function(jwrapper, sr.index=0L){
#   spc <- jwrapper$getSpectrum(as.integer(sr.index))
#   return(as.numeric(spc))
    spc <- .jcall(jwrapper,"[D","getSpectrum",as.integer(sr.index))
}