
set.seed(123)

random_letters <- sample(LETTERS, 26, replace = TRUE)

letter_factor <- factor(random_letters)

first_five_levels <- levels(letter_factor)[1:5]

print(first_five_levels)