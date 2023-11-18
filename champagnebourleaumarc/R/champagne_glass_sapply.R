
#' Vectorized Champagne Glass Calculation using sapply
#'
#' This function calculates the side profile of a champagne glass using `sapply` for vectorized input.
#'
#' @inheritParams champagne_glass
#' @return A numeric vector of radii corresponding to the heights given by `x`.
#' @export
#' @examples
#' champagne_glass_sapply(seq(0, 20, by = 1))
champagne_glass_sapply <- function(x) {
  sapply(x, champagne_glass)
}
