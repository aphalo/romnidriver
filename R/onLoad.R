#' This private function automatically loads Omnidriver
#' 
#' @param libname name of library (automatically supplied)
#' @param pkgname name of the package (automatically supplied)
#' @seealso see also \code{\link{rJava}}
#'
.onLoad <- function(libname, pkgname) {
  .jpackage(pkgname, lib.loc = libname)
}