\name{sl0solve}
\alias{sl0solve}
\title{Returns the sparsest vector s which satisfies underdetermined
system of linear equations  A*s=x.}
\usage{
  sl0solve(A, x, sigma_min, sigma_df, mu0, L)
}
\arguments{
  \item{A}{nxm with m > n (a wide matrix)}

  \item{x}{a vector of length n}

  \item{sigma_min}{last element in sigma sequence.}

  \item{sigma_df}{factor by which sigma sequence
  decreases.}

  \item{mu0}{value by which to scale the mu sequence.}

  \item{L}{number of iterations for steepest ascent
  method.}
}
\value{
  a numeric vector (s) which satisfies the equation A*s=x
}
\description{
  Returns the sparsest vector s which satisfies
  underdetermined system of linear equations A*s=x.
}
\references{
  Original matlab code \link{http://ee.sharif.ir/~SLzero/}.
}
\keyword{sparse}
\keyword{vector}

