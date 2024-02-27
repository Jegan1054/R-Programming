
rows <- 5
cols <- 3
even_matrix <- matrix(nrow = rows, ncol = cols)
even_num <- 52

for (i in 1:rows) {
  for (j in 1:cols) {
    even_matrix[i, j] <- even_num
    even_num <- even_num + 2
  }
}
    
print("Even Matrix:")
print(even_matrix)

print(even_matrix)