#' Generate a random sparse test signal s
#' 
#' @param estimated.s estimated.s Calculated s vector
#' @param true.s true.s If known, the true s vector.
#' @return SNR
#' @keywords SNR 
#' @export

estSNR <- function(estimated.s,true.s) {
 res <- sl0$estSNR(estimated.s, true.s)
 return(res)  
}