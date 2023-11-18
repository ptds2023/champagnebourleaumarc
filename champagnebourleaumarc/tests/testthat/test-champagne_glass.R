# Test for the champagne_glass function
test_that("champagne_glass returns correct values", {
  expect_equal(champagne_glass(5), 2)
  expect_equal(champagne_glass(12), 8 * log2(3) + 2)
})

test_that("champagne_glass handles incorrect input", {
  expect_error(champagne_glass("not a number"))
})
