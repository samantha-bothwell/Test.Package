# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

box.lbls <- function(x, color = NULL) {
  boxplot(x, col = color)
  text(x = 0.65, y = median(x), labels = paste("Median = ", median(x)))
  text(x = 0.65, y = quantile(x, 0.25), labels = paste("Q1 = ", quantile(x, 0.25)))
  text(x = 0.65, y = quantile(x, 0.75), labels = paste("Q3 = ", quantile(x, 0.75)))
  text(x = 0.65, y = min(x), labels = paste("Min = ", min(x)))
  text(x = 0.65, y = max(x), labels = paste("Max = ", max(x)))
}

x <- c(1,6,2,9,18,12,6,3,10,21,2,3,7,1)

box.lbls(x, color = "lightblue")
