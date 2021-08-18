#' This private function automatically loads Omnidriver
#' 
#' @details Package 'rOmniDriver' is a wrapper on a Java runtime available as
#'    a .jar file. During loading the location of the .jar file needs to be 
#'    found and loaded. During installation of 'rOmniDriver' a system
#'    environment variable is normally set to the path. However, there is
#'    no guarantee that it exists or that OmniDriver is installed. Consequently,
#'    in case of failure a diagnosis of the problem is attempted and a 
#'    message issued.
#'     
#' @param libname name of library (automatically supplied)
#' @param pkgname name of the package (automatically supplied)
#' 
#' @seealso see also \code{\link[rJava]{jpackage}}.
#' 
#' @keywords internal
#' 
#' @return a numeric value
#' 
#' @note To force display of diagnosis message even when loading succeeds use 
#'   \code{Sys.setenv(OOI_DIAG = "TRUE")} before loading the package. This
#'   can be usefull to find out where the OmniDriver Java code is installed.
#' 
#' @name onLoad
#'
.onLoad <- function(libname, pkgname) {
  ooi_home <- Sys.getenv("OOI_HOME")
  ooi_diag <- as.logical(Sys.getenv("OOI_DIAG"))
  if (is.na(ooi_diag)) ooi_diag <- FALSE
  
  if (is.null(ooi_home) || ooi_home == "") {
    ooi_diag <- TRUE
    init.successful <- FALSE
    message <-
      paste(
        "rOmniDriver:\nEnvironment variable OOI_HOME is not set to a path.\n",
        "Please, make sure that the OmniDriver driver is installed and ",
        "that the environment variable OOI_HOME is set to its path.",
        sep = ""
      )
  } else {
    if (!.Platform$OS.type == "windows") {
      ooi_diag <- TRUE
      message <- 
        paste("rOmniDriver:\nPackage is well tested only under Windows 10.\n",
              "Please report any problems under your OS at",
              "'https://github.com/aphalo/romnidriver/issues'")
    } else {
      message <- character(0)
    }
    ooi_path <- paste(ooi_home, "/OmniDriver.jar", sep = "")
    
    init.successful <-
      rJava::.jpackage(pkgname,
                       lib.loc = c(libname, ooi_home),
                       morePaths = ooi_path)
    
    if (init.successful) {
      message <- paste("rOmniDriver:\n  OmniDriver initialization SUCCEEDED",
                       "\n  OI_HOME: ", ooi_home,
                       "\n  Path: ", ooi_path,
                       sep = "")
    } else {
      ooi_diag <- TRUE
      message <- paste(message, 
                       "rOmniDriver:\n  OmniDriver initialization FAILED",
                       "  OOI_HOME: ", ooi_home,
                       "  Path: ", ooi_path,
                       sep = "\n")
    }
    
  }
  # This triggers a note but is needed to report failure to find the driver
  if (ooi_diag || getOption("verbose", default = FALSE)) {
    packageStartupMessage(message)
  }
  options(OminiDriver.available = init.successful)
}

.onAttach <- function(libname, pkgname) {
  packageStartupMessage("For news about '", pkgname, 
                        "', please, see http://www.r4photobiology.info/")
}
