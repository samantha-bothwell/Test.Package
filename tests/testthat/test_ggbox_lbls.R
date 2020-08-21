library(testthat)
library(test.package)

context("ggbox_lbls")
test_that("ggbox_lbls only takes class numeric or class samantha", {
  x <- rnorm(100, 0, 1)
  g <- ggbox_lbls(x)
  expect_equal(class(g)[1], "gg")
})

test_that("ggbox_lbls only takes class numeric or class samantha", {
  x <- rnorm(1000)
  class(x) <- "samantha"
  g <- ggbox_lbls(x)
  expect_equal(class(g)[1], "gg")
})
