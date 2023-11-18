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

#' Vectorized Champagne Glass Calculation using purrr
#'
#' This function calculates the side profile of a champagne glass using `purrr::map_dbl` for vectorized input.
#'
#' @inheritParams champagne_glass
#' @return A numeric vector of radii corresponding to the heights given by `x`.
#' @export
#' @examples
#' champagne_glass_purrr(seq(0, 20, by = 1))
champagne_glass_purrr <- function(x) {
  purrr::map_dbl(x, champagne_glass)
}

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
