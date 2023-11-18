library(testthat)
library(champagnebourleaumarc)
test_that("champagne_glass_vectorized handles incorrect input", {
  expect_error(champagne_glass_vectorized("not a number"), "Input must be numeric")
})
