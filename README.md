
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

### Skipping installation

In package ‘rOmniDriver’ (\>= 0.1.16), when initialization fails during
loading, option `"rOmniDriver.offline"` is set to `TRUE` so that
packages that include this package in their `Suggests:` can detect
whether the connection to Java and the OmniDriver driver are active or
not. This makes it possible to disable specific functions rather than
the dependent package failing to load. The instructions below are to be
followed when on-line access to spectrometers is needed. If this is not
the case, Java and OmniDriver do not need to be installed, and in some
cases not even this package needs to be installed.

### Requirements

OmniDriver from Ocean Insight is written in the computer language Java.
To access the functions in this driver from R, we need to use a bridge
between the two computer languages, which is provided by R package
‘rJava’ available from CRAN. ‘rJava’ requires that the Java OpenJDK or
Java JDK, the Java development kit, is installed. Installing only the
Java JRE, the Java runtime environment, is not enough in this case,
although it is for many other programs written in Java. In other words
being able to run other Java programs does not ensure that the needed
JDK is already installed.

#### Java

Of the different Java implementations, **Oracle’s Java 8 JDK** and
**Temurin 8 OpenJDK**
([download](https://adoptium.net/en-GB/temurin/releases/?version=8)) are
known to work with ‘rJava’ and **OmniDriver**. The ‘rJava’ package
sometimes fails to work with the most recent version of the Java JDK, as
its updates may lag slightly behind. On computers with processors and
operating systems like Windows that support two command sets, 32 bits
and 64 bits, and two versions of R are available, the version of Java
installed and the R version used should match, being both of them 32
bits or 64 bits. As the 32 bit version of R is soon reaching its
end-of-life, sticking to the 64 bit versions is a good idea.

**Security updates to Oracle’s Java 8 JDK are available only through
support contracts. The JDK is free only for personal use, under
frequently changing licence terms.** **Temurin 8 OpenJDK is free for
commercial and non-commercial uses and regularly receives security
updates. The OpenJDK is recommended for use with recent versions of
‘rJava’.** When installing the OpenJDK make sure the `JAVA_HOME`
variable and/or registry keys are set. This is not done by default, but
instead needs to be selected during installation. *Be aware that
changing the registry keys can affect the use of other versions of Java
if they are already installed.*

Getting R package ‘rJava’ working is not always straightforward, so one
needs to make sure ‘rJava’ is correctly installed and functional before
attempting to install `rOmniDriver`. This is important, in case problems
occur. Sometimes a restart of the operating system can help.

On Windows, the R distribution (\>= 4.2.0) includes only binary packages
and R binary for the 64-bit architecture and the Java/Temurin 8
JDK/OpenJDK x64 installer is needed. In contrast, earlier versions of R
(\<= 4.2.0) installs packages and R binaries for both 64-bit and 32-bit
architectures, which means that using the default R installation and
settings one may need to install also both versions of the JDK/OpenJDK.
The examples and documentation for the JDK are not needed to use
‘rOmniDriver’. Under Windows, if the Java/Temurin installation fails,
uninstall and re install as administrator.

Depending on the operating system, manually setting the environment
variable `"JAVA_HOME"` may be necessary. We can check if this variable
is set either at the operating system command prompt or from R, as shown
here. Windows uses a “registry” to keep track of the location of
programs so even if this variable is not set, ‘rJava’ will find the Java
JDK/Temurin OpenJDK under Windows if the registry keys are correctly
set.

``` r
Sys.getenv("JAVA_HOME")
```

At the OS terminal (such as RStudio’s Terminal window) we can check the
currently installed version of the JDK with `javac -version`. Be aware
that `javac` is used for the *JDK* and `java` for the *JRE* and for this
to work `javac` must be not only installed, but also in the `path`.

``` bash
javac -version
```

#### OmniDriver

Once Java is installed and tested working, the next step is to install
‘OmniDriver’ using the installer downloaded from Ocean Insight’s
downloads web page corresponding to the operating system you are using.
The OmniDriver installer offers a choice between installing the runtime
and the development version. The runtime is free, and is all what is
needed to use R package ‘rOmniDriver’. When there is a choice of 32 bit
and 64 bit versions, OmniDriver should match Java and R in this respect.
I have done all testing with the 64 bit version of OmniDriver, together
with the 64 bit Java 8 JDK and 64 bit R under Windows 10. (SPAM is not
needed either, so the combined download from Ocean Insight is overkill.)

After the installation of ‘Java’ and ‘OmniDriver’ is done, we are ready
for the installation of the R packages. At this point open a *new R
session*, or *restart an already open R session*. I recommend installing
first package ‘rJava’ from CRAN. This installation may fail if the path
(folder on disk) to the Java installation is not found.

``` r
install.packages("rJava")
```

Once this installation has succeeded, and ‘rJava’ examples tested to
work, we can install package ‘rOmniDriver’.

### ‘rOmniDriver’

This package is not available through CRAN as it is a wrapper based on
proprietary software from Ocean Insight with no source code freely
available. ‘rOmniDriver’ can be installed either from a CRAN-like
repository or from sources directly from the Git repository at Github.

#### Installation of a released version

*In the first case, see the installation instructions for package
‘ooacquire’ as these will install ‘ooacquire’ and its dependencies,
including ‘rOmniDriver’ from CRAN and the CRAN-like repository.*

#### Installation of the development version

**Danger!!** To install the, *possibly buggy*, development version we
use package ‘remotes’ that needs to be first installed if bot yet
installed. (Under MS-Windows installation from sources is possible only
after installing Rtools from CRAN. Under Linux operating systems the
requirements for installing R packages from source are usually but not
always met by default. Under OS-X compilers may need to be installed.
This requirements are the same as for installing any R packages from
sources.)

``` r
install.packages("remotes")
```

``` r
remotes::install_github("aphalo/romnidriver")
```

This completes the installation. Use of the package after a successful
installation consists in connecting the spectrometer through USB and
loading the package.

### If problems arise

The first time you connect an instrument most operating systems will
install the USB drivers automatically, as they are made available by the
‘OmniDriver’ installation. If this step fails there are different
possibilities: 1) the account you are logged-in does not have the
permissions needed to install the driver, 2) the user has no permission
to write to the USB port through Java, or 3) the spectrometer needs a
firmware update for compatibility with newer versions of the operating
system (e.g. some USB2000 spectrometers under Windows versions newer
than 7). These problems are operating-system specific and do also affect
the vendor supplied software to control the spectrometer. If you can
control the spectrometer using the ‘OceanView’ program from Ocean
Insight, then Java and the spectrometer drivers should have been
installed and working correctly. **On the other hand, there is no need
for ‘OceanView’ to be installed in a computer to be able to use R
package ‘rOmniDriver’ to communicate and control Ocean Optics/Ocean
Insight spectrometers.**

The most frequent reason why installation, or functioning of the
‘rOmniDriver’ package fails is not finding the path to the installation
of OmniDriver. The ‘OmniDriver’ installer from Ocean Insight is expected
to save this path in an environment variable (in the operating system)
called “OOI_HOME”, but it not always does. If necessary we can inspect
this variable from within R.

``` r
Sys.getenv("OOI_HOME")
```

The R statement above should show the path to the folder where
OmniDriver is installed. The OmniDriver installer seems to set this
variable reliably under Windows but unreliably under Apple’s OS X (Unix)
and possibly Linux. If the variable is undefined or contains an invalid
path the user can set or edit it at the shell prompt or in a shell
script run on system start up to point to the correct folder. Otherwise
it can be set within an R script using function
`Sys.setenv(OOI_HOME = <path-to-folder>)` replacing `<path-to-folder>`
with corresponding path. Obviously the variable should be set before
loading ‘rOmniDriver’.

If problems are encountered during loading of ‘rOmniDriver’ a diagnosis
message is displayed. Display of a diagnosis message in the absence of
problems can be forced by setting `OOI_DIAG = "TRUE"` in the operating
system before starting R or by setting R option verbose with
`options(verbose = TRUE)` before loading the package. This will show the
location of the `.jar` file loaded and the values of the environment
variables `OOI_HOME` and the path to the OmniDriver `.jar` file.

## Documentation

The implemented wrapper functions respect the names of the functions as
they appear in the OmniDriver documentation but replacing “camelCase”
with “snake_case”. For a couple of function with very long names,
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
[‘ooacquire’](https://docs.r4photobiology.info/ooacquire/).

For instructions on how to install package ‘ooacquire’ please visit [its
web site](https://docs.r4photobiology.info/ooacquire/).

## Status of this package and *OmniDriver*

Package ‘rOmniDriver’ does NOT require *OceanView* or *SpectraSuite*,
the commercial software from Ocean Insight to be installed, only the
free run-time of OmniDriver. Consequently, it does not require the
purchase of software from Ocean Insight, but users of the driver
OmniDriver run-time are not guaranteed support by Ocean Insight, unless
they acquire a license to the OmniDriver SDP. OmniDriver is proprietary,
closed source, software. The R package itself is open source and
released under GPL.

**Recent versions of *OmniDriver* (2.70.0, 2.71.0) lack some functions
in the API that were included up to version 2.56.0. These newer versions
of OmniDriver no longer recognize the *USB2000* spectrometer. As
documentation is scant, I do not know if support for some other old
models like *USB4000* has been also removed.**

Packages ‘rOmniDriver’ and ‘ooacquire’ have been developed with the
agreement of Ocean Optics on the condition of they remaining open source
and free to use. The GPL ensures that any derivative works also respect
this agreement.

## News

News about updates of this and other packages in the R for Photobiology
are suite are regularly posted at (<https://www.r4photobiology.info/>).

## Contributing

The source code of the package is open and available at GitHub.
Contributions and reports of compatibility or lack of it with different
spectrometers and operating systems are very welcome.

Please report bugs and request new features at
(<https://github.com/aphalo/romnidriver/issues>). Pull requests are
welcome at (<https://github.com/aphalo/romnidriver>).

## Citation

If you use ‘ooacquire’ to produce scientific or commercial publications,
acknowledge this by citing the package according to:

``` r
citation("rOmniDriver")
#> To cite package 'rOmniDriver' in publications use:
#> 
#>   Aphalo P (2023). _rOmniDriver: Omni Driver R wrapper_.
#>   http://www.r4photobiology.info,
#>   https://github.com/aphalo/romnidriver.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {rOmniDriver: Omni Driver R wrapper},
#>     author = {Pedro J. Aphalo},
#>     year = {2023},
#>     note = {http://www.r4photobiology.info,
#> https://github.com/aphalo/romnidriver},
#>   }
```

## License

© 2013-2023 Pedro J. Aphalo (<pedro.aphalo@helsinki.fi>) for the code.
Lasse Ylianttila developed the majority of the algorithms used. Released
under the GPL, version 2 or greater. This software carries no warranty
of any kind.
