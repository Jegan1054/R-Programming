data("USArrests")
print(summary(USArrests))
num_features <- ncol(USArrests)
feature_types <- sapply(USArrests, class)
num_records <- nrow(USArrests)
cat("\nNumber of Records:", num_records, "\n\n")
stat_features <- sapply(USArrests, function(x) {
  c(Mean = mean(x), Median = median(x), SD = sd(x))
})
print(stat_features)
max_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("\nState with Largest Total Rape:", max_rape_state, "\n")

max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("\nState with Max Murder Rate:", max_murder_state, "\n")
cat("\nState with Min Murder Rate:", min_murder_state, "\n\n")
correlation_matrix <- cor(USArrests)
print(correlation_matrix)
median_assault <- median(USArrests$Assault)
states_above_median <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("\n\nStates with Assault Arrests > Median: \n", states_above_median, "\n")
percentile_25 <- quantile(USArrests$Murder, 0.25)
states_bottom_25 <- rownames(USArrests)[USArrests$Murder < percentile_25]
cat("\n\nStates in Bottom 25% of Murder Arrests:\n", states_bottom_25, "\n")

hist(USArrests$Murder, col = "lightblue",
     main = "Histogram of Murder Arrests",
     xlab = "Murder Arrests", ylab = "Frequency")
plot(density(USArrests$Murder), 
     main = "Density Plot of Murder Arrests",
     xlab = "Murder Arrests", ylab = "Density", col = "blue")

murder_arrests <- USArrests$Murder
urban_population <- USArrests$UrbanPop
assault_arrests <- USArrests$Assault
plot(urban_population, murder_arrests, main = "Murder Arrest Rate vs. Urban Population",
     xlab = "Urban Population (%)", ylab = "Murder Arrest Rate",
     col = heat.colors(20)[cut(assault_arrests, breaks = 20)],
     pch = 19)
legend("topright", legend = "Assault Arrest Rate", 
       fill = heat.colors(20), title = "Assault Rate")
barplot(USArrests$Murder, names.arg = rownames(USArrests),
        col = "lightblue", main = "Murder Rates by State",
        xlab = "State", ylab = "Murder Rate")