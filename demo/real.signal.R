
error.val <- function(v,vhat) { 
  res <- sqrt(sum(abs(v - vhat)^2))/sqrt(sum(abs(v)^2))
  return(res)
}

m <- 1000
n <- 400
L <- 3
sigma_off <- 0.0001
sigma_df <- 0.5
sigma_min <- sigma_off*4;

true.s <- signal_gen(m,floor(n/4),sigma_off)

A <- matrix(runif(n*m),n,m)

A <- apply(A, 2, function(z) res <- z/sqrt(sum(abs(z)^2)))
x <- A %*% true.s
mu0 <- 2;

s <- sl0solve(A, x, sigma_min, sigma_df, mu0, L)

print(err <- error.val(true.s,s))


