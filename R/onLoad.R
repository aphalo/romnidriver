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
  .jpackage(pkgname, lib.loc = libname)
}