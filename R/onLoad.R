#' This private function automatically loads Omnidriver
#' 
#' @usage .onLoad(libname, pkgname)
#' @param libname name of library (automatically supplied)
#' @param pkgname name of the package (automatically supplied)
#' @seealso see also \code{\link{rJava}}
#' @keywords manip misc
#' @return a numeric value
#'
.onLoad <- function(libname, pkgname) {
  ooi_home <- Sys.getenv("OOI_HOME")
  if (is.null(ooi_home)) {
    warning("Path to OmniDriver runtime not found.\nMake sure that driver is installed and\nthat the environment variable OOI_HOME is set.")
  return()
  }
  ooi_path <- paste(ooi_home,"\\OmniDriver.jar", sep="")
  rJava::.jpackage(pkgname, lib.loc = c(libname, ooi_home), morePaths = ooi_path)
}