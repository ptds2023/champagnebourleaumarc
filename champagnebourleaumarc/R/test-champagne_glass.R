library(testthat)
library(champagnebourleaumarc)

test_that("champagne_glass returns expected values", {
  expect_equal(champagne_glass(-1), 0)
  expect_equal(champagne_glass(0.25), 15)
  expect_equal(champagne_glass(5), 2)
  expect_equal(champagne_glass(12), 8 * log2(3) + 2)
  expect_equal(champagne_glass(18), 8 * log2(6) + 2)
  expect_equal(champagne_glass(21), 0)
})

test_that("champagne_glass handles incorrect input", {
  expect_error(champagne_glass("not a number"))
})
