library(reshape2)
data(ChickWeight)
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_6_records <- tail(ordered_data, 6)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = mean)
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = get_mode)
cat("(i) Last 6 records from ordered data:\n")
print(last_6_records)
cat("(ii) (b) Mean value of weight grouped by Diet:\n")
print(mean_weight_by_diet)
cat("(ii) (c) Mode of weight grouped by Diet:\n")
print(mode_weight_by_diet)