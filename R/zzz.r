sl0 <- new("Module")

.onLoad <- function(libname, pkgname){
  loadRcppModules(direct=FALSE)
}