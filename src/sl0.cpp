#include "sl0.h"
#include <RcppArmadillo.h>
#include <iostream>

using namespace Rcpp ;
using namespace RcppArmadillo ;
using namespace std;
using namespace arma;

arma::vec SL0(const arma::mat& A, const arma::vec& x, 
                      double sigma_min, double sigma_df, double mu0, 
                      int L) {
  
  int N = A.n_cols, M = A.n_rows;
  arma::mat A_pinv = arma::pinv(A);
  arma::vec s = A_pinv*x;
  arma::vec delta(N, 1);
  
  double sigma;
  sigma = 2.0 * arma::max(sqrt(s % s));
  while ( sigma > sigma_min ) {
    for (int ii = 0; ii < L; ii++) {  
      delta = Delta(s, sigma);
      s = s - mu0*delta;
      s = s - A_pinv*(A*s - x); 
    }
    sigma = sigma_df*sigma;
  }
                    
  return s;
}

arma::vec Delta(const arma::vec& s, double sigma) {
  
  arma::vec delta = s % arma::exp(-arma::pow(s,2)/(sigma * sigma));
  return delta;
}

double estSNR(const arma::vec& est_s, const arma::vec& true_s) {
  
  arma::vec err = true_s - est_s;
  double SNR = 10*log10( arma::dot(true_s, true_s)/arma::dot(err, err) );
  return SNR;
  
}

RCPP_MODULE(sl0){
       using namespace Rcpp ;
       function( "SL0", &SL0, "Returns the sparsest vector s which \
                                 satisfies underdetermined system of \
                                 linear equations  A*s=x" ) ;
      function( "estSNR", &estSNR, "Estimate SNR");
}