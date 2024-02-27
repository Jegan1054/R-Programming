sieve_of_eratosthenes <- function(n) {
  if (n < 2) {
    stop("Input number should be at least 2.")
  }
  
  is_prime <- rep(TRUE, n)
  is_prime[1] <- FALSE
  
  for (i in 2:sqrt(n)) {
    if (is_prime[i]) {
      is_prime[i^2:n] <- FALSE
    }
  }
  
  return(which(is_prime))
}

prime_numbers_sieve <- function(n) {
  return(sieve_of_eratosthenes(n))
}

# Example usage with print statement
result <- prime_numbers_sieve(12)
print(result)
