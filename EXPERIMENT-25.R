# Create the initial data frame
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

# a. Extract 3rd and 5th rows with 1st and 3rd columns
exam_data_subset <- exam_data[c(3, 5), c(1, 3)]
print("Subset of data frame:")
print(exam_data_subset)

# b. Add a new column named country
exam_data$country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
print("Data frame with new column 'country':")
print(exam_data)

# c. Add new row(s) to an existing data frame
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country = c('USA', 'USA')  # Include the 'country' column
)  
exam_data <- rbind(exam_data, new_exam_data)
print("Data frame with new row(s):")
print(exam_data)

# d. Sort a given data frame by name and score
exam_data_sorted <- exam_data[order(exam_data$name, exam_data$score), ]
print("Data frame sorted by name and score:")
print(exam_data_sorted)

# e. Save information of a data frame in a file and display the information of the file
write.table(exam_data, file = "exam_data.txt", sep = "\t", quote = FALSE)
print("Data frame saved to 'exam_data.txt'. Content of the file:")
print(read.table("exam_data.txt", header = TRUE))
