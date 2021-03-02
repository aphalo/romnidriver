#' Is feature "I2C Bus" supported?
#' 
#' Checks whether feature "I2C Bus" is available
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
is_feature_supported_I2C_bus <- function(jwrapper, sr.index=0L){
  jwrapper$isFeatureSupportedI2CBus(as.integer(sr.index))
}

#' Get feature controller "I2C Bus"
#' 
#' Get a wrapper for accessing this optional feature.
#' 
#' @note Before calling this function you first need to check that the feature
#'   is supported by the spectrometer in use by calling
#'   \code{\link{is_feature_supported_I2C_bus}}.
#'   
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer
#'  
#' @export
#' 
#' @return an object which provides the desired interface, or null if this
#'   feature is not available for this spectrometer.
#'   
#' @family Spectrometer I2C- and SPI-bus functions.
#'
get_feature_I2C_bus <- function(jwrapper, sr.index = 0L) {
  jwrapper$getFeatureControllerI2CBus(as.integer(sr.index))
}

#' Talk to "I2C bus"
#'
#' Send a packet of bytes over the I2C bus and read the result, or simply
#' read from an address.
#' 
#' @details Several spectrometers have an I2C bus accesible through the auxiliary 
#' connector which can be used to control accessories. The I2C bus in Ocean
#' Insight spectrometers is not intended to be used to control the spectrometer
#' or retrieve data but instead to control and access other accessories with
#' the spectrometer acting as middle man.
#' 
#' Function \code{get_I2C_bus()} performs a general purpose read on the I2C
#' pins for interfacing to attached peripherals. The time to complete the
#' command is determined by the amount of data transferred and the response time
#' of the peripheral. The I2C bus runs at 400KHz. The maximum number of bytes
#' that can be read is 61.
#'
#' Function \code{set_I2C_bus()} performs a general-purpose write on the I2C
#' pins for interfacing to attached peripherals. The time to complete the
#' command is determined by the amount of data transferred and the response time
#' of the peripheral. The I2C bus runs at 400KHz.
#'
#' @param I2C.bus.wrapper feature wrapper as returned by function
#'   \code{rOmniDriver::get_feature_controller_I2C_bus}
#' @param I2C.address byte, address to select device in I2C bus.
#' @param message byte, array of bytes with maximum length of 61.
#' @param num.bytes numeric Number of bytes to be transferred or read, 1..61.
#'
#' @export
#'
#' @return The result Array of bytes containing the read data. May be null.
#'   
#' @family Spectrometer I2C- and SPI-bus functions.
#'
get_I2C_bus <- function(I2C.bus.wrapper, I2C.address, num.bytes) {
  stopifnot(num.bytes >= 0 & num.bytes <= 61)
  I2C.bus.wrapper$getI2CBytes(address = I2C.address,
                              numBytes = as.integer(num.bytes))
} 

#' @rdname get_I2C_bus
#' @export
#' 
#' @return The result of the write to the I2C device.
#' 
set_I2C_bus <- function(I2C.bus.wrapper, I2C.address, num.bytes, message) {
  stopifnot(num.bytes >= 0 & num.bytes <= 61)
  I2C.bus.wrapper$setI2CBytes(address = I2C.address,
                              length = as.integer(num.bytes),
                              i2C = message)
} 
