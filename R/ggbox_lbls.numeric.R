#' Summary Labels for Boxplots in GGplot for class numeric
#'
#' This function labels summary statistics on a ggplot boxplot. The summary statistics reported
#' are the minimum, maximum, Q1, Q3 and median. To use the function, you must specify a vector \code{x}.
#'
#' @param obj numeric object to be plotted
#' @param color The color of the body of the boxplot. By default, the boxplot color is lightblue.
#' @param ... additional arguments passed to plotting functions
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

ggbox_lbls.numeric <- function(obj, color = "lightblue", ...) {

  numeric.obj <- obj

  numeric.obj <- as.data.frame(numeric.obj)
  g <- ggplot(data = numeric.obj, aes(x = "", y = numeric.obj)) +
    geom_boxplot(fill = color) +
    annotate("text", x = 0.8, y = quantile(numeric.obj[,1], 0.55), label =  paste("Median = ", round(median(numeric.obj[,1]),2))) +
    annotate("text", x = 0.8, y = quantile(numeric.obj[,1], 0.30), label =  paste("Q1 = ", round(quantile(numeric.obj[,1], 0.25),2))) +
    annotate("text", x = 0.8, y = quantile(numeric.obj[,1], 0.80), label =  paste("Q3 = ", round(quantile(numeric.obj[,1], 0.75), 2))) +
    annotate("text", x = 0.8, y = min(numeric.obj[,1]), label =  paste("Min = ", round(min(numeric.obj[,1]),2))) +
    annotate("text", x = 0.8, y = max(numeric.obj[,1]), label =  paste("Max = ", round(max(numeric.obj[,1]),2)))
  g
}
