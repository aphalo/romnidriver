
# rOmniDriver <img src="man/figures/logo.png" align="right" width="120" />

## Purpose

The package **rOmniDriver** makes available in R the functions in
OmniDriver SDP from *Ocean Insight* (formerly *Ocean Optics*).
OmniDriver allows to change settings and acquire spectra using any Ocean
Insight USB-connected spectrometer. It has been tested with *USB2000*,
*Maya2000Pro*, *Flame* and *Jaz* instruments under MS-windows 7 and
MS-Windows 10, but should also work with any other modern spectrometer
from Ocean Insight, and also under OS X, and Linux. However, only a
subset of all OmniDriver exported functions are implemented (those
functions that write to the instrument EEPROM are not implemented as
they require a secret key for activation, and in addition their use
without risk requires a profound understanding of the instruments’
hardware and firmware). In addition most functions specific to
spectrometer models we do not have access to are not implemented, as we
would be unable to test them. As currently the API documentation is
freely available at Ocean Insight’ support page, adding additional
functions using the source code of the functions included in our package
as examples is almost trivial. *If you do add new functions, please,
make a pull request and I will add your contributed code to the package,
and your name as contributor to the package in its DESCRIPTION.*

Package **ooacquire** provides a high level set of functions for
spectral data acquisition built using this package as a base.

## Installation

OmniDriver from Ocean Insight is written in Java. To access the
functions in this driver from R, we need to a bridge between both
languages, given by package ‘rJava’ available in CRAN. The requirement
is not only Java JRE, the runtime environment, but also Java JDK, the
development kit to be installed. Java 8 is known to work. The ‘rJava’
package sometimes fails to work with the most recent version of the Java
JDK. On computers with processors that support two command sets, for 32
bits and 64 bits, the version of Java and R should match. Getting
‘rJava’ working is not always straightforward, so one needs to make sure
‘rJava’ is correctly installed and functional before attempting to
install `rOmniDriver`.

On Windows, by default R installs packages for both 64-bit and 32-bit
architectures, which means that using the default R installation and
settings one may need to install also both versions of the JDK. The
examples and documentation for the JDK are not needed to use
‘rOmniDriver’. Under Windows, if the Java installation fails, uninstall
and reinstall as administrator.

Once Java is installed and tested working, the next step is to install
OmniDriver using the installer downloaded from Ocean Insight’s downloads
web page corresponding to the operating system you are using. The
OmniDriver installer offers a choice between installing the free runtime
and the development version. The runtime is free, and is all what is
needed by ‘rOmniDriver’. Under recent Windows versions I have done all
testing with the 64 bit version. SPAM is not needed either, so the
combined download from Ocean Insight is overkill.

After the installation of ‘Java’ and ‘OmniDriver’ is done, we are ready
for the installation of the R packages. At this point open a *new R
session*, or *restart an already open one*. I recommend installing first
package ‘rJava’ from CRAN. This installation may fail if the path
(folder on disk) to the Java installation is not found. Depending on the
operating system, manually setting the environment variable “JAVA\_HOME”
may be necessary.

``` r
install.packages("rJava")
```

Once this installation has succeeded, and ‘rJava’ examples tested to
work, we can install package ‘rOmniDriver’. This package is not
available through CRAN as it is a wrapper based on proprietary software
from Ocean Insight with no source code freely available. ‘rOmniDriver’
can be installed from sources directly from the Git repository at
Github. For this we use package ‘remotes’ that needs to be first
installed unless it has been already installed. (Under MS-Windows
installation from sources is possible only after installing Rtools.)

``` r
install.packages("remotes")
```

``` r
remotes::install_github("aphalo/romnidriver")
```

The most frequent reason why installation, or functioning of the
‘rOmniDriver’ package fails is not finding the path to the installation
of OmniDriver. The ‘OmniDriver’ installer from Ocean Insight is expected
to save this path in an environment variable (in the operating system)
called “OOI\_HOME”, but it not always does. If necessary we can inspect
this variable from within R.

``` r
Sys.getenv("OOI_HOME")
```

The R statement above should show the path to the folder where
OmniDriver is installed. The OmniDriver installer seems to set this
variable reliably under Windows but unreliably under Apple’s OS X (Unix)
and possibly Linux. If the variable is undefined or contains an invalid
path the user can set or edit it at the shell prompt or in a shell
script run on system startup to point to the correct folder. Otherwise
it can be set within an R script using function
`Sys.setenv(OOI_HOME = <path-to-folder>)` replacing `<path-to-folder>`
with corresponding path. Obviosuly the variable should be set before
loading ‘rOmniDriver’.

If problems are encountered during package load a diagnosis message is
displayed. Printing of a diagnosis message in the absence of problems
can be forced by setting `OOI_DIAG = "TRUE"` in the operating syatem
before starting R or by setting R option verbose with
`options(verbose = TRUE)` before loading the package. This will show the
location of the `.jar` file loaded and the values of the environment
variables `OOI_HOME` and the path to the OmniDriver `.jar` file.

There is no other set up needed after installation, just plug your
spectrometer to a USB port. The first time you connect an instrument
most operating systems will install the drivers automatically, as they
are made available by the ‘OmniDriver’ installation. If this step fails
there are different possibilities: 1) the account you are logged-in does
not have the permissions needed to install the driver, 2) the user has
no permission to write to the USB port through Java, or 3) the
spectrometer needs a firmware update for compatibility with newer
versions of the operating system (e.g. some USB2000 spectrometers under
Windows versions newer than 7). These problems are operating-system
specific and do also affect the vendor supplied software to control the
spectrometer. If you can control the spectrometer using the ‘OceanView’
program from Ocean Insight, then Java and the spectrometer drivers
should have been installed and working correctly.

## Documentation

The implemented wrapper functions respect the names of the functions as
they appear in the OmniDriver documentation but replacing “camelCase”
with “snake\_case”. For a couple of function with very long names,
synonyms are defined in addition to the original names. The
documentation for the OmniDriver API is currently available at
(<https://www.oceaninsight.com/globalassets/catalog-blocks-and-images/software-downloads-installers/javadocs-api/omnidriver/index.html>).

This package has a vignette, that can be alternatively built with full
output with a spectrometer connected, or in simplified form with the
instrument off-line. A built version of the documentation is available
at (<https://docs.r4photobiology.info/rOmniDriver/>).

## Package ‘ooacquire’

The functions in the OmniDriver SDP are “bare bones” building blocks
that can be used to write scripts directly, e.g. to acquire one scan
every few seconds, or used to create more sophisticated functions for
specific protocols and applications, of which several examples are
provided in package
[‘ooacquire’](https://docs.r4photobiology.info/ooacquire/). Package
‘ooacquire’ can be installed with this R statement.

``` r
devtools::install_github("aphalo/ooacquire")
```

## Status of this package and *OmniDriver*

Package ‘rOmniDriver’ does NOT require *OceanView* or *SpectraSuite*,
the commercial software from Ocean Insight to be installed, only the
free run-time of OmniDriver. Consequently, it does not require the
purchase of software from Ocean Insight, but users of the driver
OmniDriver run-time are not guaranteed support by Ocean Insight, unless
they acquire a license to the OmniDriver SDP. OmniDriver is proprietary,
closed source, software. The R package itself is open source and
released under GPL.

## In case of problems

The source code of the package is open and available at GitHub. Please
report any problems or bugs by creating a new issue at
(<https://github.com/aphalo/photobiology/issues>). Contributions and
reports of compatibility or lack of it with different spectrometers and
operating systems are very welcome.
