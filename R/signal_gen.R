#' Generate a random sparse test signal s
#' 
#' @param N length of signal vector
#' @param NZ sparsity (number of zeros)
#' @param sigma_off variance of gaussian noise over the
#'   inactive components
#' @param fixed.active fixed non-randomly generated
#'   components
#' @return a numeric vector (s) which satisfies the equation A*s=x
#' @keywords sparse vector
#' @export

signal_gen <- function(N, NZ, sigma_off, fixed.active) {
  
  if(nargs() < 2)
    NZ <- 0.1*N
  if(nargs() < 3)
    sigma_off <- 0.01
  
  NZ.idx <- matrix(0, N, 1)
  rand.int <- sample.int(N,N) 
  NZ.idx[rand.int[1:NZ]] <- 1
  NZ.idx <- as.logical(NZ.idx)
  
  s <- matrix(0, N, 1)
  
  s[NZ.idx] <- ifelse(nargs() < 4, runif(NZ), fixed.active)
  s[!NZ.idx] <- sigma_off*runif(N - NZ)
  
  return(s)
}