data("ChickWeight")
ChickWeight$Diet <- as.factor(ChickWeight$Diet)
reg_model <- lm(weight ~ Time + Diet, data = ChickWeight)
summary(reg_model)
new_data <- data.frame(Time = 10, Diet = factor(1))
predicted_weight <- predict(reg_model, newdata = new_data)

cat("Predicted weight for Time = 10 and Diet = 1:", predicted_weight, "\n")
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
if (length(actual_weight) > 0) {
  error <- actual_weight - predicted_weight
  cat("Error in the model:", error, "\n")
} else {
  cat("Data point not found for Time = 10 and Diet = 1.\n")
}
par(mfrow = c(2, 2))
plot(reg_model)