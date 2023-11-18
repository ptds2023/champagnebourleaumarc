library(testthat)
library(champagnebourleaumarc)

test_that("champagne_glass_vectorized returns expected vector", {
  expect_equal(champagne_glass_vectorized(c(-1, 0.25, 5, 12, 18, 21)), c(0, 15, 2, 8 * log2(3) + 2, 8 * log2(6) + 2, 0))
})

test_that("champagne_glass_vectorized handles incorrect input", {
  expect_error(champagne_glass_vectorized("not a number"))
})
