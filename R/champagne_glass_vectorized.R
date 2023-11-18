
#' Vectorized Calculation of Champagne Glass Profile
#'
#' This function provides a vectorized version of the \code{champagne_glass} function
#' to calculate the profile of a champagne glass over a vector of heights.
#'
#' @param x A numeric vector of heights at which to calculate the glass radius.
#' @return A numeric vector of radii corresponding to the heights given by `x`.
#' @export
#' @examples
#' champagne_glass_vectorized(c(-1, 0.25, 5, 12, 16, 21))
champagne_glass_vectorized <- Vectorize(champagne_glass)
