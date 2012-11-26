\name{signal_gen}
\alias{signal_gen}
\title{Generate a random sparse test signal s}
\usage{
  signal_gen(N, NZ, sigma_off, fixed.active)
}
\arguments{
  \item{N}{N length of signal vector}

  \item{NZ}{NZ sparsity (number of zeros)}

  \item{sigma_off}{sigma_off variance of gaussian noise
  over the inactive components}

  \item{fixed.active}{fixed.active fixed non-randomly
  generated components}
}
\value{
  a numeric vector (s) which satisfies the equation A*s=x
}
\description{
  Generate a random sparse test signal s
}
\keyword{sparse}
\keyword{vector}

