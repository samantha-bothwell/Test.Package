library(testthat)
library(test.package)

context("box_lbls")
test_that("box_lbls only takes numeric vector values", {
  x <- rnorm(100, 0, 1)
  b <- box_lbls(x, color = "lightblue")
  expect_equal(class(b), "recordedplot")
})

