
# rOmniDriver’

[![](http://www.r-pkg.org/badges/version/rOmniDriver)](https://cran.r-project.org/package=rOmniDriver)
[![](http://cranlogs.r-pkg.org/badges/rOmniDriver)](http://cran.rstudio.com/web/packages/rOmniDriver/index.html)
[![](http://cranlogs.r-pkg.org/badges/grand-total/rOmniDriver)](http://cran.rstudio.com/web/packages/rOmniDriver/index.html)

## Introduction

The package **rOmniDriver** makes available in R the functions in
OmniDriver SDP from Ocean Optics. OmniDriver allows to change settings
and acquire spectra using any Ocean Optics USB-connected spectrometer.
It has been tested with our *Maya2000Pro*, *Flame* and *Jaz* instruments
under MS-windows 7 and MS-Windows 10, but should also work with any
other modern spectrometer from Ocean Optics, and also under OS X, and
Linux. However, only a subset of all OmniDriver exported functions are
implemented (those functions that write to the instrument EEPROM are not
implemented as they require a secret key for activation, and in addition
their use without risk requires a profound understanding of the
instruments’ hardware and firmware). In addition most functions specific
to spectrometer models we do not have access to are not implemented, as
we would be unable to test them. As currently the API docummentation is
freely available at Ocean Optics’ support page, adding additional
functions using the source code of the functions included in our package
as examples is almost trivial. *If you do add new functions, please,
make a pull request and I will add your contributed code to the package,
and your name as contributor to the package in its DESCRIPTION.*

Package **ooacquire** provides a high level set of functions for
spectral data acquisition built using this package as a base.

## Installation

OmniDriver from Ocean Optics (now Ocean Insight) is written in Java. To
access the functions in this driver from R, we need to a bridge between
both languages, given by package ‘rJava’ available in CRAN. The
requirement is not only Java JRE, the runtime environment, but aslo Java
JDK, the development kit to be installed. Java 8 is known to work. On
computers with processors that support two command sets, for 32 bits and
64 bits, the version of Java and R should match. On Windows, by default
R installs packages for both architectures by default, which means that
using the default R installation and settings one needs to install also
both versions of the JDK. The examples and documentation for the JDK are
not needed. Under Windows, if the installation fails, uninstall and
reinstall as administrator.

Once Java is installed and tested working, the next step is to install
OmniDriver. The OmniDriver installer offers a choice between installing
the free runtime and the development version. The runtime is free, and
is all what is needed. Under recent Windows versions I have done all
testing with the 64 bit version. SPAM is not needed either, so the
combined dowload is overkill.

At this point open an R session, or restart an already open one. I
recommend installing first package ‘rJava’ from CRAN. This installation
may fail if the path to the Java instalaltion is not found. Depending on
the operating system setting the environment variable “JAVA\_HOME” may
be necessary.

``` r
install.packages("rJava")
```

Once this installation has suceeded, we can install package
‘rOmniDriver’ from the Git repository at Bitbucket. For this we use
package ‘devtools’ that needs to be installed unless it has been already
installed.

``` r
install.packages("devtools")
```

``` r
devtools::install_bitbucket("aphalo/romnidriver")
```

The most frequent resean why installation, or functioning of the package
fails is not finding the path to the installation of OmniDriver. The
installer is expected to set an environment variable in the operating
system called “OOI\_HOME”. If necessary we can inspect it from within R.

``` r
Sys.getenv("OOI_HOME")
```

The statement above should show the path to the folder where OmniDriver
is installed. The OmniDriver installer seems to set this variable
reliably under Windows but unreliably under Apple’s OS X (unix) and
possibly Linux. If the varaible is undefined the user can set it at the
shell prompt or in a shell script to point to the correct folder.

There is no other set up needed, just plug your spectrometer to an USB
port. The first time you connect an instrument the most operating
systems will install the drivers as they are made available by the
OmniDriver installation. If this step fails there are different
possibilities: the account you are logged-in does not have the
permissions needed to install the driver or to write to the USB port
through Java. How to solve this is operating system specific and related
to the use of any software to control the spectrometer.

## Documentation

The inplemented wrapper functions respect the names of the functions as
they appear in the OmniDriver documentation. For a couple of function
with very long names, synonims are defined in addition to the original
names. The documentation for the OmniDriver API is available at
(<http://oceanoptics.com/api/omnidriver/>).

This package has vignettes, that can be alternatively built with full
output with a spectrometer connected, or in simplified form with the
instrument off-line. A built version of the documentation is available
at (<https://docs.r4photobiology.info/rOmniDriver/>).

## Package ‘ooacquire’

The functions in the OmniDriver SDP are “bare bones” building blocks
that can be used to write scripts directly, e.g. to acquire one scan
every few seconds, or used to create more sofisticated functions for
specific protocols and applications, of which several examples are
provided in package ‘ooacquire’, whose on-line documentation is
avaialble at (<https://docs.r4photobiology.info/ooacquire/>). It can be
installed with this statement.

``` r
devtools::install_bitbucket("aphalo/ooacquire")
```

## Status of this package and OmniDriver

Package ‘rOmniDriver’ does NOT require *OceanView* or *SpectraSuite*,
the commercial software from Ocean Optics to be installed, only the free
run-time of OmniDriver. Consequently, it does not require the purchase
of software from Ocean Optics, but users of the driver OmniDriver
run-time are not guaranteed support by Ocean Optics, unless they acquire
a licence to the OmniDriver SDP. OmniDriver is proprietary, closed
source, software. The R package itself is released under GPL.

## In case of problems

The source code of the package is open, and available through Bitbucket.
Please report any problems or bugs by creating a new issue at
(<https://bitbucket.org/aphalo/photobiology/issues>). Contributions and
reports of compatibility or lack of it with different spectrometers and
operating systems are very welcome.
