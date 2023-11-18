
#' Vectorized Champagne Glass Calculation using a Loop
#'
#' This function calculates the side profile of a champagne glass using a for loop for vectorized input.
#'
#' @inheritParams champagne_glass
#' @return A numeric vector of radii corresponding to the heights given by `x`.
#' @export
#' @examples
#' champagne_glass_for(seq(0, 20, by = 1))
champagne_glass_for <- function(x) {
  result <- numeric(length(x))
  for (i in seq_along(x)) {
    result[i] <- champagne_glass(x[i])
  }
  return(result)
}
