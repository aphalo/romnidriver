## ------------------------------------------------------------------------
library(rOmniDriver)
w <- init_api()
get_api_version(w)

## ------------------------------------------------------------------------
n <- open_all_spectrometers(w)
n

## ---- eval=n>0-----------------------------------------------------------
#  get_name(jwrapper = w, sr.index = 0L)
#  get_serial_number(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  get_name(w)
#  get_serial_number(w)

## ---- eval=n>0-----------------------------------------------------------
#  bench <- get_bench(jwrapper = w, sr.index = 0L)
#  bench$getGrating()
#  bench$getFilterWavelength()
#  bench$getSlitSize()

## ---- eval=n>0-----------------------------------------------------------
#  get_detector(jwrapper = w, sr.index = 0L)
#  get_maximum_integration_time(jwrapper = w, sr.index = 0L)
#  get_minimum_integration_time(jwrapper = w, sr.index = 0L)
#  get_maximum_intensity(jwrapper = w, sr.index = 0L)
#  get_wavelengths(jwrapper = w, sr.index = 0L)
#  get_firmware_model(jwrapper = w, sr.index = 0L)
#  get_firmware_version(jwrapper = w, sr.index = 0L)
#  get_number_of_pixels(jwrapper = w, sr.index = 0L)
#  get_number_of_dark_pixels(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  if (is_feature_supported_controller_board_temperature(jwrapper = w, sr.index = 0L)) {
#    controller.board <-
#      get_feature_controller_board_temperature(jwrapper = w, sr.index = 0L)
#    controller.board$getBoardTemperatureCelsius()
#  } else {
#    print("feature not supported")
#  }

## ---- eval=n>0-----------------------------------------------------------
#  if (is_feature_supported_detector_temperature(jwrapper = w, sr.index = 0L)) {
#    detector.board <-
#      get_feature_detector_board_temperature(jwrapper = w, sr.index = 0L)
#    detector.board$getDetectorTemperatureCelsius()
#  } else {
#    print("feature not supported")
#  }

## ---- eval=n>0-----------------------------------------------------------
#  if (is_feature_supported_spectrum_type(jwrapper = w, sr.index = 0L)) {
#    spectrum.type <- get_feature_spectrum_type(jwrapper = w, sr.index = 0L)
#    spectrum.type$setSpectrumType(1L) # raw
#    spectrum.type$setSpectrumType(0L) # normal
#  } else {
#    print("feature not supported")
#  }

## ---- eval=n>0-----------------------------------------------------------
#  set_integration_time(jwrapper = w, time.usec = 1e3, sr.index = 0L)
#  get_integration_time(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  set_boxcar_width(w, half.width.px = 0L, sr.index = 0L)
#  get_boxcar_width(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  set_scans_to_avg(jwrapper = w, n.scans = 4L, sr.index = 0L)
#  get_scans_to_avg(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  set_correct_for_detector_nonlinearity(jwrapper = w, correct = 0L, sr.index = 0L)
#  get_correct_for_detector_nonlineary(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  set_correct_for_electrical_dark(jwrapper = w, enable = 0L, sr.index = 0L)
#  get_correct_for_electrical_dark(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  set_timeout(jwrapper = w, time.millisec = 1000L, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  raw.spctrum <- get_spectrum(jwrapper = w, sr.index = 0L)
#  is_spectrum_valid(jwrapper = w, sr.index = 0L)
#  is_saturated(jwrapper = w, sr.index = 0L)

## ---- eval=n>0-----------------------------------------------------------
#  close_all_spectrometers(w)

