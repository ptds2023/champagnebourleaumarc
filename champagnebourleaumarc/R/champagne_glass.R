#' Champagne Glass Side Profile
#'
#' This function calculates the side profile of a champagne glass.
#' It returns the radius at a given height `x`.
#'
#' @param x A numeric value or vector of heights at which to calculate the glass radius.
#' @return A numeric value or vector of radii corresponding to the heights given by `x`.
#' @export
#' @examples
#' champagne_glass(5)
#' champagne_glass(c(3, 7, 14))
champagne_glass <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be numeric", call. = FALSE)
  }

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
