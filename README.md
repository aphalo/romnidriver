The package **rOmniDriver** makes available in R the functions in OmniDriver SDP from Ocean Optics. OmniDriver allows to change settings and acquire spectra using any Ocean Optics USB-connected spectrometer. It has been tested with our _Maya2000Pro_ under MS-windows 7, but should also work with any other modern spectrometers from Ocean Optics, and also under OS X, and Linux. However, only a subset of all OmniDriver exported functions are implemented. As currently the API docummentation is freely available at Ocean Optics' support page, adding additional functions using the source code of other functions given here as examples is trivial.

For the package to function the free OmniDriver run-time driver, which can be downloaded from the Ocean Optics web site should also installed. There is no other set up needed, just plug your spectrometer to an USB port. The first time the operating system will install the drivers.

This package does NOT require _OceanView_ or _SpectraSuite_ to be installed. It does not require the purchase of software from Ocean Optics, but it is not supported by Ocean Optics, unless you acquire a licence to the SDP.

