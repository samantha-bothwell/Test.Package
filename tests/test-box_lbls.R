library(testthat)

context("box_lbls")
test_that("box_lbls only takes numeric vector values", {
  x <- rnorm(100, 0, 1)
  expect_true(is.numeric(x))
})
