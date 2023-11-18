champagne_glass <- function(x) {
  if (x < 0) {
    return(0)
  } else if (x < 0.5) {
    return(15)
  } else if (x < 10) {
    return(2)
  } else if (x < 15) {
    return(8 * log2(x - 9) + 2)
  } else if (x < 20) {
    return(8 * log2(6) + 2)
  } else {
    return(0)
  }
}
champagne_glass_for <- function(x) {
  result <- numeric(length(x))
  for (i in seq_along(x)) {
    result[i] <- champagne_glass(x[i])
  }
  return(result)
}



champagne_glass_purrr <- function(x) {
  map_dbl(x, champagne_glass)
}


champagne_glass_sapply <- function(x) {
  sapply(x, champagne_glass)
}



champagne_glass_vectorized <- Vectorize(champagne_glass)




champagne_glass_vectorized_boolean <- function(x) {
  # Initialize the output vector
  result <- numeric(length(x))

  # Apply conditions using boolean indexing
  result[x < 0] <- 0
  result[x >= 0 & x < 0.5] <- 15
  result[x >= 0.5 & x < 10] <- 2
  result[x >= 10 & x < 15] <- 8 * log2(x[x >= 10 & x < 15] - 9) + 2
  result[x >= 15 & x < 20] <- 8 * log2(6) + 2
  result[x >= 20] <- 0

  return(result)
}
