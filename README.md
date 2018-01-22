# R package 'rOmniDriver' #

[![](http://www.r-pkg.org/badges/version/rOmniDriver)](https://cran.r-project.org/package=rOmniDriver) [![](http://cranlogs.r-pkg.org/badges/rOmniDriver)](http://cran.rstudio.com/web/packages/rOmniDriver/index.html) [![](http://cranlogs.r-pkg.org/badges/grand-total/rOmniDriver)](http://cran.rstudio.com/web/packages/rOmniDriver/index.html)

The package **rOmniDriver** makes available in R the functions in OmniDriver SDP from Ocean Optics. OmniDriver allows to change settings and acquire spectra using any Ocean Optics USB-connected spectrometer. It has been tested with our _Maya2000Pro_, _Flame_ and _Jaz_ instruments under MS-windows 7 and MS-Windows 10, but should also work with any other modern spectrometer from Ocean Optics, and also under OS X, and Linux. However, only a subset of all OmniDriver exported functions are implemented (those functions that write to the instrument EEPROM are not implemented as they require a secret key for activation, and in addition their use without risk requires a profound understanding of the instruments' hardware and firmware). As currently the API docummentation is freely available at Ocean Optics' support page, adding additional functions using the source code of the functions included in our package as examples is almost trivial.

Package **ooacquire** provides a high level set of functions for spectral data acquisition built using this package as a base.

For the package to function the free OmniDriver run-time driver, which can be downloaded from the Ocean Optics web site should also installed, as well as Java, a requirement of the driver itself. There is no other set up needed, just plug your spectrometer to an USB port. The first time you connect an instrument the operating system will install the drivers as they are made available by the OmniDriver installation.

The documentation for the OmniDriver API is available at (http://oceanoptics.com/api/omnidriver/).

This package does NOT require _OceanView_ or _SpectraSuite_ to be installed. It does not require the purchase of software from Ocean Optics, but it is not supported by Ocean Optics, unless you acquire a licence to the SDP.