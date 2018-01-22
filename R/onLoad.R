#' This private function automatically loads Omnidriver
#' 
#' @param libname name of library (automatically supplied)
#' @param pkgname name of the package (automatically supplied)
#' @seealso see also \code{\link[rJava]{.jpackage}}.
#' @keywords internal
#' @return a numeric value
#' 
#' @name onLoad
#'
.onLoad <- function(libname, pkgname) {
  ooi_home <- Sys.getenv("OOI_HOME")
  ooi_diag <- as.logical(Sys.getenv("OOI_DIAG"))
  if (is.na(ooi_diag)) ooi_diag <- FALSE
  
  if (is.null(ooi_home)) {
    ooi_diag <- TRUE
    message <-
      paste(
        "rOmniDriver\n  Path to OmniDriver runtime not found.",
        "\n  make sure that driver is installed and",
        "that the environment variable OOI_HOME is set.",
        sep = "\n"
      )
  } else {
    ooi_path <- paste(ooi_home, "/OmniDriver.jar", sep = "")
    
    init.successful <-
      rJava::.jpackage(pkgname,
                       lib.loc = c(libname, ooi_home),
                       morePaths = ooi_path)
    
    if (init.successful) {
      message <- paste("rOmniDriver\n  OmniDriver initialization SUCCEEDED",
                       "\n  OI_HOME: ", ooi_home,
                       "\n  Path: ", ooi_path,
                       sep = "")
    } else {
      ooi_diag <- TRUE
      message <- paste("rOmniDriver\n  OmniDriver initialization FAILED",
                       "\n  OOI_HOME: ", ooi_home,
                       "\n  Path: ", ooi_path,
                       sep = "")
    }
    
  }
  if (ooi_diag) {
    packageStartupMessage(message)
  }
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage("  For news about '", pkgname, "', please, see http://www.r4photobiology.info/")
  packageStartupMessage("  For on-line documentation see http://docs.r4photobiology.info/", pkgname, "/")
}
