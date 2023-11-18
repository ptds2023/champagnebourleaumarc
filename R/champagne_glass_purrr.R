
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
  if (!is.numeric(x)) {
    stop("Input must be numeric", call. = FALSE)
  }
  purrr::map_dbl(x, champagne_glass)
}
