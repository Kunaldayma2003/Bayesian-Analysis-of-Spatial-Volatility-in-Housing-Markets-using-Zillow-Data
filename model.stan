data {
  int<lower=0> n;  // number of observations
  real y[n];       // observed data
}
parameters {
  real beta;
  real<lower=-1, upper=1> rho;
  real<lower=-1, upper=1> lambda;
  real mu_h;
  real<lower=0> sigma_u2;
  real h[n];
}
model {
  // Priors
  beta ~ normal(0, 10);
  rho ~ uniform(-1, 1);
  lambda ~ uniform(-1, 1);
  mu_h ~ normal(0, 10);
  sigma_u2 ~ inv_gamma(2, 0.5);

  // AR(1) process for volatility
  h[1] ~ normal(mu_h, sqrt(sigma_u2));
  for (i in 2:n) {
    h[i] ~ normal(mu_h + rho * (h[i-1] - mu_h), sqrt(sigma_u2));
  }

  // Likelihood
  for (i in 1:n) {
    y[i] ~ normal(exp(0.5 * h[i]) * beta, 1);
  }
}
