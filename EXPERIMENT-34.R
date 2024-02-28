set.seed(123)
response_times <- rnorm(100, mean = 100, sd = 20)
cumulative_times <- cumsum(response_times)
plot(cumulative_times, type = "l", col = "blue", lwd = 2,
     xlab = "Trials", ylab = "Cumulative Response Time",
     main = "Cumulative Response Time Plot")