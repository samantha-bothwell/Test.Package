#' Summary Labels for Boxplots in GGplot
#'
#' This function labels summary statistics on a ggplot boxplot. The summary statistics reported
#' are the minimum, maximum, Q1, Q3 and median. To use the function, you must specify a vector \code{x}.
#'
#'
#' @param x for specifying data from which the boxplots are to be produced. Either a numeric vector, or a single list containing such vectors.
#' @param color the color of the body of the boxplot. By default, the boxplot color is the same as the background color.
#'
#'
#' @author Samantha Bothwell \email{samantha.bothwell@@cuanschutz.edu}
#' @export
#'
#' @importFrom ggplot2
#'
#' @examples
#' ggbox_lbls(rnorm(1000), color = "pink")
#'
#' x <- c(1,6,3,9,7,5,9,16,4)
#' ggbox_lbls(x, color = "steelblue1")
#'

ggbox_lbls <- function(x, color = NULL) {
  x <- as.data.frame(x)
  ggplot(data = x, aes(x = "", y = x)) +
    geom_boxplot(fill = color) +
    annotate("text", x = 0.8, y = median(x[,1]) + 0.5, label =  paste("Median = ", median(x[,1]))) +
    annotate("text", x = 0.8, y = quantile(x[,1], 0.25) + 0.5, label =  paste("Q1 = ", quantile(x[,1], 0.25))) +
    annotate("text", x = 0.8, y = quantile(x[,1], 0.75) + 0.5, label =  paste("Q3 = ", quantile(x[,1], 0.75))) +
    annotate("text", x = 0.8, y = min(x[,1]), label =  paste("Min = ", min(x[,1]))) +
    annotate("text", x = 0.8, y = max(x[,1]), label =  paste("Max = ", max(x[,1])))
}


