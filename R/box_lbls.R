#' Summary Labels for Boxplots
#'
#' This function labels summary statistics on an R boxplot. The summary statistics reported
#' are the minimum, maximum, Q1, Q3 and median. To use the function, you must specify a vector \code{x}.
#'
#'
#' @param x A numeric vector for specifying data from which the boxplots are to be produced
#' @param color The color of the body of the boxplot. By default, the boxplot color is the same as the background color.
#'
#'
#' @author Samantha Bothwell \email{samantha.bothwell@@cuanschutz.edu}
#' @export
#'
#'
#' @examples
#' box_lbls(rnorm(1000), color = "pink")
#'
#' x <- c(1,6,3,9,7,5,9,16,4)
#' box_lbls(x, color = "lightblue")
#'

box_lbls <- function(x, color = NULL) {
    boxplot(x, col = color)
    text(x = 0.65, y = median(x), labels = paste("Median = ", median(x)))
    text(x = 0.65, y = quantile(x, 0.25), labels = paste("Q1 = ", quantile(x, 0.25)))
    text(x = 0.65, y = quantile(x, 0.75), labels = paste("Q3 = ", quantile(x, 0.75)))
    text(x = 0.65, y = min(x), labels = paste("Min = ", min(x)))
    text(x = 0.65, y = max(x), labels = paste("Max = ", max(x)))
}

