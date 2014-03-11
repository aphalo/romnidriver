options(java.home="C:\\Program Files\\Ocean Optics\\OmniDriver\\_jvm")
library(rJava)

f <- .jnew("java/awt/Frame","Hello")
.jcall(f,,"setVisible",TRUE)

Sys.setenv(PATH=".;C:\\Program Files\\Ocean Optics\\OmniDriver\\_jvm")
# OO_path <- paste(Sys.getenv("OOI_HOME"),"\\OmniDriver.jar", sep="")
OO_path <- Sys.getenv("OOI_HOME")
.jinit(force.init=TRUE)
.jaddClassPath(OO_path)
# .jaddClassPath(dir( "./inst/java", full.names=TRUE ))

.jclassPath()

wrapper <- .jnew("com/oceanoptics/omnidriver/api/wrapper/Wrapper")
test <- wrapper$openAllSpectrometers()
is.numeric(test)
test
