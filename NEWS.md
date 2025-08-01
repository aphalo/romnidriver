---
editor_options: 
  markdown: 
    wrap: 72
---

# rOmniDriver 0.1.20-2 (2025-07-26)

-   Documentation update. No change to R code.

# rOmniDriver 0.1.20 (2024-03-29)

-   Check that we pass only finite values to OmniDriver functions for 
    integration time and at least 1 as number of scans. This change only 
    triggers a more informative error message.
-   Revise start up messages for clarity as the lack of an OmniDriver 
    installation is not a problem when using 'ooacquire' to do computations on 
    previously acquired raw counts data.
-   Tested good with OmniDriver 2.72.
-   Update installation instructions, adding the R-Universe repository.

# rOmniDriver 0.1.19

-   Fix bug behind failure to initialize the high-resolution-time API wrapper
    in the Ocean Optics Java code.

# rOmniDriver 0.1.18

-   Add support for high speed acquisition: wrapper functions 
    `highSpdAcq_allocate_buffer`, `highSpdAcq_start_acquisition()`,
    `highSpdAcq_get_spectrum()` and `highSpdAcq_get_time_stamp()`.
-   Add support for handling of high resolution time stamps and time
    differences based on them.
    
# rOmniDriver 0.1.17

-   Address API changes in OmniDriver >= 2.70/2.71.

# rOmniDriver 0.1.16

-   Address API changes in OmniDriver >= 2.70.

# rOmniDriver 0.1.15

-   Tweak messages emitted when loading the package.
-   Set R option `"OmniDriver.offline"` during loading to reflect success or
    failure of initialization.
    
# rOmniDriver 0.1.14

-   Add `set_USB_timeout()` and `is_USB_timeout()`.
-   Edit `set_timeout()` and `is_timeout()` as 'OmniDriver' does not
    always provide the Java methods `setTimeout` and `isTimeout`.
-   Add function `is_api_enabled()`.
-   Add check for success of API initialization in function
    `init_api()`.
-   Add preliminary (untested) support for I2C and SPI buses.
-   Move repository from BitBucket to GitHub.
-   Test with USB2000 (under Windows 10, FX/2 firmware updated to
    2.51.0).
-   Test good with OmniDriver 2.56.
-   Update README to better explain all the steps needed to install the
    this package as well as OmniDriver.
-   Update documentation to reflect that the company *Ocean Optics* has
    been renamed *Ocean Insight*.

# rOmniDriver 0.1.13

-   Add brief installation instructions to README.
-   Fix bug affecting OS X and Linux.
-   Improve on-load diagnosis and messages.
-   Tested good with OmniDriver 2.46.

# rOmniDriver 0.1.12

-   Add support for features "internal trigger" and method
    "getLastException".

# rOmniDriver 0.1.11

-   Add support for retrieval of irradiance calibration factors from
    instrument firmware.

# rOmniDriver 0.1.10

-   Fix bug: missing formal parameter for `ch.index`.

# rOmniDriver 0.1.9

-   Add example scripts to installation.

# rOmniDriver 0.1.8

-   Add support for multi-channel spectrometers. The changes should not
    affect any existing scripts for single-channel instruments. However,
    it requires a recent version of the runtime from Ocean Optics (API
    version 2.40 or newer).

# rOmniDriver 0.1.7

-   Add several functions needed for more general use. Still many are
    not implemented including support for special "features" and
    triggers.

# rOmniDriver 0.1.6

-   Added function `get_integration_time()`.

# rOmniDriver 0.1.5

-   Added functions `get_name()` and `get_serial_number()`.

# rOmniDriver 0.1.4

-   Rebuilt with R 3.1.0
-   No `.jar` files included with package.
-   At initialization reads the environment variable set during the
    OmniDriver runtime installation, sets the path for the Java class
    calls accordingly.
-   This means that the package does not include any code from Ocean
    Optics.

# rOmniDriver 0.1.3

-   Rebuilt with R 3.0.3 and the documentation improved so that the
    current version of 'roxygen2' does not fail with a fatal error.

# rOmniDriver 0.1.2

Working in some simple tests with the Maya2000Pro in the prototype of
'MayaControl'.
