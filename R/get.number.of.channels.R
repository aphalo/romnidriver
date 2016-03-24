#' Get number of channels
#' 
#' A function to query the number of channels
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @return a numeric value
#' @export
#'
get_number_of_channels <- function(jwrapper, sr.index = 0L) {
  jwrapper$getWrapperExtensions()$getNumberOfChannels(as.integer(sr.index))
}

#' Get number of enabled channels
#' 
#' A function to query the number of enabled channels
#' from a spectrometer.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#'  
#' @return a numeric value
#' @export
#'
get_number_of_enabled_channels <- function(jwrapper, sr.index = 0L) {
  jwrapper$getWrapperExtensions()$getNumberOfEnabledChannels(as.integer(sr.index))
}

#' Informs whether a channel is enbled or not
#' 
#' Informs whether a channel of a multichannel spectrometer is enbled or not.
#' 
#' @param jwrapper an open Wrapper object from Omnidriver
#' @param sr.index an index to address the spectrometer 
#' @param ch.index an index to address the channel in a spectrometer with more
#'   than one channel.
#'  
#' @export
#' @return a numeric value
#'
is_channel_enabled <- function(jwrapper,
                               sr.index = 0L,
                               ch.index = 0L) {
  jwrapper$getWrapperExtensions()$isChannelEnabled(as.integer(sr.index), as.integer(ch.index))
}
