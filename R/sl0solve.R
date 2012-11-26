#' Returns the sparsest vector s which satisfies underdetermined
#' system of linear equations  A*s=x.
#' 
#' @param A nxm with m > n (a wide matrix)
#' @param x a vector of length n
#' @param sigma_min last element in sigma sequence.
#' @param sigma_df factor by which sigma sequence decreases.
#' @param mu0 value by which to scale the mu sequence.
#' @param L number of iterations for steepest ascent method.
#' @return a numeric vector (s) which satisfies the equation A*s=x
#' @keywords sparse vector
#' @references Original matlab code \link{http://ee.sharif.ir/~SLzero/}.
#' @export

sl0solve <- function(A, x, sigma_min, sigma_df, mu0, L) {
  
  res <- sl0$SL0(A, as.vector(x), sigma_min, sigma_df, mu0, L)
  return(res) 
}