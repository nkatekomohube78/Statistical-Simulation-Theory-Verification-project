# Statistical-Simulation-Theory-Verification-project
Multivariate statistics project using Monte Carlo methods and matrix analysis

## Overview
This project explores key concepts in **statistical simulation and multivariate theory** using Monte Carlo methods.  
It verifies the theoretical behavior of the **chi-square distribution**, introduces the **Wishart distribution**, and connects matrix-based results to familiar ideas from regression and variance decomposition.

The project combines simulation, theoretical interpretation, and statistical reasoning.
## Project Objectives
- Validate the theoretical chi-square distribution using simulation
- Study the effect of sample size on convergence to theoretical distributions
- Understand the Wishart distribution as a multivariate generalization of the chi-square
- Interpret the **Schur complement** in a statistical context


## Part 1: Chi-Square Simulation Study
- Simulated 1000 samples drawn from a normal distribution
- Computed a chi-square test statistic from each sample
- Compared empirical histograms to the theoretical chi-square density

### Key Findings
- For smaller samples (n = 50), the simulated distribution closely follows the theoretical curve with mild skewness
- For larger samples (n = 500), the empirical distribution aligns almost perfectly with theory
- Increasing sample size reduces variability and improves convergence to the theoretical distribution


## Part 2: Wishart Distribution
- Defined the **Wishart distribution** as the distribution of sample covariance matrices from multivariate normal data
- Explained its relationship to the chi-square distribution:
  - The chi-square distribution is a special univariate case of the Wishart
- Described an algorithmic approach to simulating central Wishart random matrices using matrix factorization


## Part 3: Schur Complement Interpretation
- Verified the dimensional consistency of a scalar Schur complement expression
- Interpreted the Schur complement as:
  - A measure of residual variation
  - Analogous to the residual sum of squares in linear regression
- Highlighted its role in understanding conditional independence and projection in multivariate statistics


## Methods Used
- Monte Carlo simulation
- Probability distribution theory
- Matrix algebra
- Multivariate statistical reasoning

## Skills Demonstrated
- Statistical simulation and validation
- Understanding of asymptotic behavior
- Multivariate distributions (Wishart, chi-square)
- Linear algebra applied to statistics
- Clear theoretical interpretation of results

## Notes for Recruiters
This project demonstrates the ability to:
- Translate statistical theory into simulations
- Interpret empirical results using probability theory
- Connect abstract matrix concepts to practical statistical intuition

