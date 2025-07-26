
# rOmniDriver <img src="man/figures/logo.png" align="right" width="120" />

[![rOmniDriver status
badge](https://aphalo.r-universe.dev/badges/rOmniDriver)](https://aphalo.r-universe.dev/rOmniDriver)

## Purpose

The package **rOmniDriver** makes available in R the functions in
OmniDriver SDP from *Ocean Insight* (formerly *Ocean Optics*).
OmniDriver allows to change settings and acquire spectra using any Ocean
Insight USB-connected spectrometer. It has been tested with *USB2000*,
*Maya2000Pro*, *Flame* and *Jaz* instruments under MS-windows 7,
MS-Windows 10, and MS-Windows 11. It is known to also work under OS-X,
and should also work under Linux. All modern spectrometers from Ocean
Insight, except the very latest ones, are supported by OmniDriver and
can be expected to also work with this package.

R wrappers are implemented for a large subset of the functions exported
by OmniDriver. However, functions that write to the instrument EEPROM
are not implemented as they require a secret key for activation, and, in
addition, their use without risk requires a profound understanding of
the instruments’ hardware and firmware. In addition, most functions
specific to spectrometer models we do not have access to are not
implemented, as we would be unable to test them. As currently the API
documentation is freely available at Ocean Insight’ support page, adding
additional functions using the source code of the functions included in
our package as example is almost trivial. *If you do add new functions,
please, make a pull request and I will add your contributed code to the
package, and your name as contributor to the package in its
DESCRIPTION.*

Our R package ‘ooacquire’ provides a high level set of functions for
spectral data acquisition built using this package as a base.

Package **‘ooacquire’** supports most types of *Ocean Optics*
spectrometers from former *Ocean Optics*, now *Ocean Insight*
(<https://www.oceanoptics.com/>). The free runtime of the *OmniDriver
SDP* is no longer supported by Ocean Optics and, thus, no longer
available. The free runtime of the *OmniDriver SDP* and *Java* need both
to be installed before data acquisition is possible.

## Discontinuation of OmniDriver by Ocean Optics

**Ocean Optics has discontinued support for *OmniDriver* in mid 2024!**
This means that the runtime has to be downloaded from a “hidden” page in
the Ocean Optics web site at
<https://www.oceanoptics.com/software/resources/discontinued-software/>.
Discontinuation seems to mean that support for newer models will not be
added. Two versions of OmniDriver are available 2.75 and 2.56. Version
2.75 is the last released one and does not support very old
spectrometers such as USB2000 (not plus); HR2000 (not plus);
ADC1000-USB; S2000; USB650. Version 2.56 was the last one to support
them.

Package ‘rOmniDriver’ works with both of these versions of OmniDriver
(and several other versions).

### Skipping installation

In package ‘rOmniDriver’ (\>= 0.1.16), when initialization fails during
loading, option `"rOmniDriver.offline"` is set to `TRUE` so that
packages that include this package in their `Suggests:` can detect
whether the connection to Java and the OmniDriver driver are active or
not. This makes it possible to disable specific functions rather than
the dependent package failing to load. The instructions below are to be
followed when on-line access to spectrometers is needed. If this is not
the case, Java and OmniDriver do not need to be installed, and in the
case of ‘ooacquire’, ‘rOmniDriver’ does not need to be installed to use
functions that do not depend on an active connection to a spectrometer.

### Requirements

OmniDriver from Ocean Insight is written in the computer language Java.
To access the functions in this driver from R, we need to use a bridge
between the two computer languages, which is provided by R package
‘rJava’ available from CRAN. ‘rJava’ requires the Java development kit
to be installed. installed. Distributions **Temurin 8 OpenJDK**,
**Corretto 8 OpenJDK**, or **Java 8 JDK** (Java Open development kit)
are know to work, as well as some newer versions. Temurin OpenJDK and
Corretto OpenJDK are free distributions, in contrast to Oracle’s Java 8,
which has some restrictions and is less frequently updated.

*The Java run-time is not enough!* Thus, being able to run other Java
programs does not ensure that the needed JDK is already installed as
needed.

#### Java

Of the different Java implementations, **Oracle’s Java 8 JDK**,
**Temurin 8 OpenJDK**
([download](https://adoptium.net/en-GB/temurin/releases/?version=8)) and
**Corretto 8 OpenJDK**
([download](https://corretto.aws/downloads/latest/amazon-corretto-8-x64-windows-jdk.msi))
are known to work with ‘rJava’ and **OmniDriver**. The ‘rJava’ package
sometimes fails to work with the most recent version of the Java JDK, as
its updates may lag slightly behind. On computers with processors and
operating systems like Windows that support two “architectures”, 32 bits
and 64 bits, R is nowadays only available as a 64 bit binary. The
version of Java installed and the R version used should match, with both
64 bits.

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

Getting R package ‘rJava’ working is usualy straightforward but can
occasionaly fail to work automatically. Thus, one needs to make sure
‘rJava’ is correctly installed and functional before attempting to
install `rOmniDriver`. This is important, in case problems occur.
Sometimes a restart of the operating system can help.

On Windows, the R distribution (\>= 4.2.0) includes only binary packages
and R binary for the 64-bit architecture and the Java/Temurin 8
JDK/Corretto 8 SDK/Adoptium JDK/OpenJDK **x64** installer is needed. The
examples and documentation for the Java JDK are not needed to use
‘rOmniDriver’. Under Windows, if the Java/Temurin/Corretto installation
fails, uninstall and re install as administrator.

Depending on the operating system, manually setting the environment
variable `"JAVA_HOME"` may be necessary. We can check if this variable
is set either at the operating system command prompt or from R, as shown
here. Windows uses a “registry” to keep track of the location of
programs so even if this variable is not set, ‘rJava’ will find the Java
JDK/Temurin/Corretto OpenJDK under Windows if the registry keys are
correctly set.

``` r
Sys.getenv("JAVA_HOME")
#> [1] "C:\\Program Files\\Eclipse Adoptium\\jdk-8.0.362.9-hotspot\\"
```

At the OS terminal (such as RStudio’s Terminal window) we can check the
currently installed version of the JDK with `javac -version`. Be aware
that `javac` is used for the *JDK* and `java` for the *JRE* and for
‘rJava’, and consequently also ‘rOmniDriver’, to work `javac` must be
not only installed, but also in the `path`.

``` bash
javac -version
```

#### OmniDriver

Once Java is installed and tested working, the next step is to install
‘OmniDriver’ using the installer downloaded from Ocean Optics’s
discontinued software downloads web page. Installers are available for
different operating systems and 32 bit and 64 bit variants. As R is
nowadays only available as a 64 bit binary, both the 64 bit Java JDK and
64 bit OmniDriver installer must be used.

The OmniDriver installer offers a choice between installing the runtime
and the development version. The runtime is free, and is all what is
needed to use R package ‘rOmniDriver’. When there is a choice of 32 bit
and 64 bit versions, OmniDriver should match Java and R in this respect.
I have done all testing with the 64 bit version of OmniDriver, together
with the 64 bit Java 8 JDK and 64 bit R under Windows 10. (SPAM is not
needed either, so the combined download from Ocean Insight is overkill.)

After the installation of ‘Java’ and ‘OmniDriver’ is completed, the R
packages can be installed. At this point open a *new R session*, or
*restart an already open R session*. I recommend installing first
package ‘rJava’ from CRAN first, and testing that it works. This
installation may fail if the path (folder on disk) to the Java
installation is not found.

``` r
install.packages("rJava")
```

Once this installation has succeeded, and ‘rJava’ examples tested to
work, package ‘rOmniDriver’ and its other dependencies can be installed.

### ‘rOmniDriver’

This package is not available through CRAN as it is a wrapper based on
proprietary software from Ocean Optics with no source code freely
available. ‘rOmniDriver’ can be installed either from a CRAN-like
repository at *R-Universe* or from sources directly from the Git
repository at *Github*. As the R-Universe is at most 1 h behind Github,
and provides ready-made binaries for installation, this is the preferred
approach.

#### Installation from R-Universe

The “CRAN-like” repository is hosted by the R-Universe. It serves source
packages as well as Windows, OS X (Apple Mac) and Ubuntu binaries.

In recent versions of R, an option can be set to make this repository
visible to R before installing packages as usual. The code below adds
this repository to those already selected.

``` r
repos <- getOption("repos", default = list())
repos[["r4photobiology"]] <- "https://aphalo.r-universe.dev'"
options(repos = repos)
```

After setting the option with the code above, installation does not
differ from that of packages available through CRAN.

``` r
install.packages("rOmniDriver")
```

Alternatively, without setting the option, it is possible to pass the
URL in the call to `install.packages()`. It is important to also include
the URL to CRAN or one of its mirrors to ensure that all packages
‘rOmniDriver’ depends on are installed automatically.

``` r
install.packages('rOmniDriver', 
                 repos = c('https://aphalo.r-universe.dev', 
                           'https://cloud.r-project.org'))
```

#### Installation from GitHub

The `main` branch of the Git repository at GitHub is automatically
retrieved by the R-Universe builder and the CRAN-like repository
binaries and sources checked for errors and built. The only reasons to
install directly from GitHub are failure to connect to R-Universe or
need to install a development branch of the code oher than ‘main’.
Installation from GitHub is possible only from sources requiring to
build the package locallt. **Development branches other than ‘main’ are
likely to be incomplete or to contain bugs. In most cases, just useful
only for testing new features.**

Under MS-Windows installation from sources is possible only after
installation from CRAN of a version of Rtools matching the R version in
use. Under Linux operating systems the requirements for installing R
packages from source are usually but not always met by default. Under
OS-X compilers may need to be installed. This requirements are the same
as for installing any other R packages from sources.

``` r
install.packages("remotes")
```

``` r
remotes::install_github("aphalo/romnidriver")
```

Use of the package after a successful installation consists in
connecting the spectrometer through USB and loading the package. The
code examples in the *User Guide* (package vignette) can be run to test
if the installation has been successful and compatible with the Ocean
Optics that will be used.

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
control the spectrometer using the ‘OceanView’ or the now discontinued
‘SpectraSuite’ program from Ocean Optics, then Java and the spectrometer
*communication* drivers (e.g., USB), needed in addition to ‘OmniDriver’
have been installed by the OS and working correctly. **On the other
hand, there is no need for ‘OceanView’ or ‘SpectraSuite’ to be installed
in a computer to be able to use R package ‘rOmniDriver’ to communicate
and control Ocean Optics spectrometers.**

The most frequent reason why installation, or functioning of the
‘rOmniDriver’ package fails is not finding the path to the installation
of OmniDriver. The ‘OmniDriver’ installer from Ocean Insight is expected
to save this path in an environment variable (in the operating system)
called “OOI_HOME”, but it not always does. If necessary we can inspect
this variable from within R.

``` r
Sys.getenv("OOI_HOME")
#> [1] "C:\\Program Files\\Ocean Optics\\OmniDriver\\OOI_HOME"
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
`options(verbose = TRUE)` before loading the package, as shown below.
This will show the location of the `.jar` file loaded and the values of
the environment variables `OOI_HOME` and the path to the OmniDriver
`.jar` file.

``` r
old.options <- options(verbose = TRUE)
library(rOmniDriver)
#> Loading required package: rJava
#> now dyn.load("C:/Users/Aphalo/AppData/Local/R/win-library/4.5/rJava/libs/x64/rJava.dll") ...
#> rOmniDriver:
#>   OmniDriver initialization SUCCEEDED
#>   OI_HOME: 
#> C:\Program Files\Ocean Optics\OmniDriver\OOI_HOME
#>   Path: 
#> C:\Program Files\Ocean Optics\OmniDriver\OOI_HOME/OmniDriver.jar
options(old.options)
```

The most effective way of contacting the author and maintainer is by
raising an issue at <https://github.com/aphalo/romnidriver/issues>.

## Documentation

The implemented wrapper functions respect the names of the functions as
they appear in the OmniDriver documentation but replacing “camelCase”
with “snake_case”. For a couple of function with very long names,
synonyms are defined in addition to the original names. The
documentation for the OmniDriver API is no longer openly available at
the [Ocean Optics web site](https://www.ocaenoptics.com).

This package has a vignette, that can be alternatively built with full
output with a spectrometer connected, or in simplified form with the
instrument off-line. A built version of the documentation is available
at (<https://docs.r4photobiology.info/rOmniDriver/>).

## Package ‘ooacquire’

The functions in the OmniDriver SDP are “bare bones” building blocks
that can be used to write scripts directly, e.g., to acquire one scan
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

Packages ‘rOmniDriver’ and ‘ooacquire’ have been developed with the
agreement of Ocean Optics on the condition of they remaining open source
and free to use. The GPL ensures that any derivative works also respect
this agreement.

## News

News about updates to this package are regularly posted in the
([Changelog](https://docs.r4photobiology.info/ooacquire/news/)). More
generally, documentation, articles and other content related to R for
Photobiology suite and the use of R for photobiology-related
computations is available at the [R for Photobiology
website](https://www.r4photobiology.info/).

## Contributing

The source code of the package is open and available at GitHub.
Contributions and reports of compatibility or lack of it with different
spectrometers and operating systems are very welcome. Pull requests with
corrections or adding support for not yet supported OmbiDriver functions
are also very welcome.

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
#>   Aphalo P (2025). _rOmniDriver: Omni Driver R wrapper_. R package
#>   version 0.1.20-2, <http://www.r4photobiology.info>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {rOmniDriver: Omni Driver R wrapper},
#>     author = {Pedro J. Aphalo},
#>     year = {2025},
#>     note = {R package version 0.1.20-2},
#>     url = {http://www.r4photobiology.info},
#>   }
```

## License

© 2013-2025 Pedro J. Aphalo (<pedro.aphalo@helsinki.fi>) for the code.
Lasse Ylianttila developed the majority of the algorithms used. Released
under the GPL, version 2 or greater. This software carries no warranty
of any kind.
