
#' Vectorized Calculation of Champagne Glass Profile Using Boolean Indexing
#'
#' Calculates the profile of a champagne glass using boolean indexing
#' for a vectorized input. This method uses logical conditions to apply
#' different formulae to segments of the input vector.
#'
#' @param x A numeric vector of heights at which to calculate the glass radius.
#' @return A numeric vector of radii corresponding to the heights given by `x`.
#' @export
#' @examples
#' champagne_glass_vectorized_boolean(c(-1, 0.25, 5, 12, 16, 21))
champagne_glass_vectorized_boolean <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be numeric", call. = FALSE)
  }
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

