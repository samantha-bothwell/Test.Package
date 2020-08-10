library(testthat)
library(test.package)

context("box_lbls")
test_check("box_lbls only takes numeric vector values", {
  expect_true(is.numeric(x))
})
