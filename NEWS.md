---
editor_options: 
  markdown: 
    wrap: 72
---

# rOmniDriver 0.1.13-1

-   Move repository from BitBucket to GitHub.

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

-   Added function \`get_integration_time().

# rOmniDriver 0.1.5

-   Added functions get_name and `get_serial_number()`.

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
MayaControl.