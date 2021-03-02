#' Is feature "SPI Bus" supported?
#' 
#' Checks whether feature "SPI Bus" is available
#' in the spectrometer addressed.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @export
#' @return a logical value
#'
#' @family Spectrometer I2C- and SPI-bus functions.
#'
is_feature_supported_SPI_bus <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedSPIBus(as.integer(sr.index))
}

#' Get feature controller "SPI Bus"
#' 
#' Get a wrapper for accessing this optional feature.
#' 
#' @note Before calling this function you first need to check that the feature
#'   is supported by the spectrometer in use by calling
#'   \code{\link{is_feature_supported_SPI_bus}}.
#'   
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#'  
#' @export
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
#' @family Spectrometer I2C- and SPI-bus functions.
#'
get_feature_SPI_bus <- function(jwrapper, sr.index = 0L) {
  jwrapper$getFeatureControllerSPIBus(as.integer(sr.index))
}

#' Talk to "SPI bus"
#'
#' Send a packet of bytes over the SPI bus and read the result.
#'
#' @details Several spectrometers have an I2C bus accesible through the auxiliary 
#' connector which can be used to control accesories. The I2C bus in Ocean
#' Insight spectrometers is not intended to be used to control the spectrometer
#' or retrieve data but instead to control and access other accessories with
#' the spectrometer acting as middle man.
#' 
#' @param SPI.bus.wrapper feature wrapper as returned by function
#'   \code{rOmniDriver::get_feature_controller_SPI_bus}
#' @param message bytes, array of bytes with maximum length of 62.
#' @param num.bytes numeric Number of bytes, 1..62.
#'
#' @return After writing to SPI, the spectrometer immediately reads from it. The
#'   resulting Byte array is returned.
#'   
#' @family Spectrometer I2C- and SPI-bus functions.
#'
get_SPI_bytes <- function(SPI.bus.wrapper, message) {
  stopifnot(num.bytes >= 1 & num.bytes <= 62)
  SPI.bus.wrapper$getSPIBytes(message = message, 
                              length = as.integer(num.bytes))
} 

