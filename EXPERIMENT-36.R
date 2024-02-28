library(ggplot2)
data(ChickWeight)
boxplot <- ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(x = "Diet", y = "Weight", title = "Box Plot of Weight Grouped by Diet")
print(boxplot)
histogram <- ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 20, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(x = "Weight", y = "Frequency", title = "Histogram of Weight for Diet-1")
print(histogram)
scatter_plot <- ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(x = "Time", y = "Weight", title = "Scatter Plot of Weight vs Time Grouped by Diet")
print(scatter_plot)