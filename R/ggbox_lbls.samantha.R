#' Summary Labels for Boxplots in GGplot for class Samantha
#'
#' This function labels summary statistics on a ggplot boxplot. The summary statistics reported
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
#' @import ggplot2
#'
#' @examples
#' ggbox_lbls(rnorm(1000), color = "pink")
#'
#' x <- c(1,6,3,9,7,5,9,16,4)
#' ggbox_lbls(x, color = "steelblue1")
#'

ggbox_lbls <- function(x, color = NULL) {
  x <- as.data.frame(x)
  g <- ggplot(data = x, aes(x = "", y = x)) +
    geom_boxplot(fill = color) +
    annotate("text", x = 0.8, y = quantile(x[,1], 0.55), label =  paste("Median = ", round(median(x[,1]),2))) +
    annotate("text", x = 0.8, y = quantile(x[,1], 0.30), label =  paste("Q1 = ", round(quantile(x[,1], 0.25),2))) +
    annotate("text", x = 0.8, y = quantile(x[,1], 0.80), label =  paste("Q3 = ", round(quantile(x[,1], 0.75), 2))) +
    annotate("text", x = 0.8, y = min(x[,1]), label =  paste("Min = ", round(min(x[,1]),2))) +
    annotate("text", x = 0.8, y = max(x[,1]), label =  paste("Max = ", round(max(x[,1]),2)))
}
