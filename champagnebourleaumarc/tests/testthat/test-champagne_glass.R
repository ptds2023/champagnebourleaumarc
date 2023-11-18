library(testthat)
library(champagnebourleaumarc)

test_that("champagne_glass handles incorrect input", {
  expect_error(champagne_glass("not a number"), "Input must be numeric")
})
