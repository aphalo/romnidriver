#' @details OmniDriver is a proprietary library provided by Ocean Optics
#' to allow the control of the spectrometers they sell
#' through third party software.
#' 
#' Although this package is under GPL, Omnidriver is
#' not, it is copyrighted commercial software from
#' Ocean Optics \url{http://www.oceanoptics.com}
#'  
#' Ocean Optics distributes the OmniDriver runtime free of charge. This
#' can be downloaded from Ocean Optics web site. It can be used only
#' with spectrometers sold by Ocean Optics. Ocean Optics has supported
#' the development of this R package by providing a free licence to
#' the OmniDriver SDP, which gave me access to documentation.
#' 
#' Ocean Optics will not provide support for the use of this package, unless the
#' user buys a licence for OmniDriver SDP (spectroscopy development plattform).
#' All support requests about this package should be addressed to the maintainer
#' of the package or public R user forums.
#' 
#' @note Many methods in OmniDriver are available in two versions, one for 
#'   multichannel spectrometers and one for single channels ones. In this 
#'   package each such pair of similar methods are wrapped into a single R 
#'   method. The default channel index, \code{ch.index}, in the R implementation
#'   defaults to the first available channel, so it does not need to be
#'   explicitly supplied for single channel instruments. The spectrometer index,
#'   \code{sr.index}, in the R implementation defaults to the first available
#'   spectrometer, so it does not need to be explicitly supplied when a single 
#'   instrument is connected to the host computer.
#'   
#' @section Warning!: 
#'   We have access to only three spectrometers for testing, a
#'   Maya2000Pro, a two-chennal Jaz and a Flame. So, the software is supplied
#'   without any assurance that it will work with a particular model and
#'   configuration of spectrometer. Please, do report to the maintainer any
#'   problems and also if you encounter no problems when using this package.
#'   Always supply detailed information about the spectrometer used when
#'   contacting the maintainer of the package.
#'   
#' @references 
#' \url{http://www.oceanoptics.com/Products/omnidriver.asp}
#' 
#' \url{http://oceanoptics.com/api/omnidriver/overview-summary.html}
#' @keywords package
#' @import rJava
"_PACKAGE"
