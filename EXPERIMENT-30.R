library(caret)
library(nnet)

data("iris")
set.seed(123)
splitIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
train_data <- iris[splitIndex,]
test_data <- iris[-splitIndex,]

model <- train(Species ~ Petal.Width + Petal.Length, data = train_data, method = "multinom")
predictions <- predict(model, newdata = test_data)

confusion_matrix <- confusionMatrix(predictions, test_data$Species)
print("Confusion Matrix:")
print(confusion_matrix)