library(testthat)
library(test.package)

context("bbbox_lbls")
test_that("ggbox_lbls only takes numeric vector values", {
  x <- rnorm(100, 0, 1)
  expect_true(is.numeric(x))
})

test_check("test.package")
