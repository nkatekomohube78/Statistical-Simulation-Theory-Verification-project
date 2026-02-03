
library(ggplot2)

set.seed(123)

# Parameters
n <- 50
mu <- 44
sigma <- 15
true_var <- sigma^2
reps <- 1000

# Simulate chi-square statistics
chi_stats <- replicate(reps, {
  x <- rnorm(n, mean = mu, sd = sigma)
  s2 <- var(x)
  (n - 1) * s2 / true_var
})

df <- data.frame(ChiStat = chi_stats)

# Plot
ggplot(df, aes(x = ChiStat)) +
  geom_histogram(aes(y = after_stat(density)), bins = 15, fill = "lightblue", color = "black") +
  stat_function(fun = dchisq, args = list(df = n - 1), color = "red", linewidth = 1) +
  labs(title = "Histogram of Simulated Chi-square Statistic (n = 50)",
       x = "Chi-square Statistic", y = "Density") +
  theme_minimal()









 #b
# Parameters
n <- 500

# Simulate
chi_stats_500 <- replicate(reps, {
  x <- rnorm(n, mean = mu, sd = sigma)
  s2 <- var(x)
  (n - 1) * s2 / true_var
})

df_500 <- data.frame(ChiStat = chi_stats_500)

# Plot
ggplot(df_500, aes(x = ChiStat)) +
  geom_histogram(aes(y = after_stat(density)), bins = 50, fill = "lightgreen", color = "black") +
  stat_function(fun = dchisq, args = list(df = n - 1), color = "blue", linewidth = 1) +
  labs(title = "Histogram of Simulated Chi-square Statistic (n = 500)",
       x = "Chi-square Statistic", y = "Density") +
  theme_minimal()


var(x)

