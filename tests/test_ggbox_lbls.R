library(testthat)
library(test.package)

context("ggbox_lbls")
test_that("ggbox_lbls only takes numeric vector values", {
  x <- rnorm(100, 0, 1)
  g <- ggbox_lbls(x, color = "lightblue")
  expect_equal(class(g)[1], "gg")
})
