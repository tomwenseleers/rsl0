#ifndef _rsl0_SL0_H
#define _rsl0_SL0_H

#include <RcppArmadillo.h>

arma::vec SL0(const arma::mat& A, const arma::vec& x, 
                      double sigma_min, double sigma_df, double mu0, 
                      int L);
arma::vec Delta(const arma::vec& s, double sigma);            
double estSNR(const arma::vec& est_s, const arma::vec& true_s);

#endif