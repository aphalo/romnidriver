#' This private function automatically loads Omnidriver
#' 
#' @param libname name of library (automatically supplied)
#' @param pkgname name of the package (automatically supplied)
#' @seealso see also \code{\link[rJava]{jpackage}}.
#' @keywords internal
#' @return a numeric value
#' 
#' @name onLoad
#'
.onLoad <- function(libname, pkgname) {
  ooi_home <- Sys.getenv("OOI_HOME")
  if (is.null(ooi_home)) {
    warning(
      paste(
        "Path to OmniDriver runtime not found.",
        "make sure that driver is installed and",
        "that the environment variable OOI_HOME is set.",
        sep = "\n"
      )
    )
    return()
  }
  ooi_path <- paste(ooi_home, "\\OmniDriver.jar", sep = "")
  rJava::.jpackage(pkgname,
                   lib.loc = c(libname, ooi_home),
                   morePaths = ooi_path)
}