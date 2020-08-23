#' Summary Labels for Boxplots in GGplot for class Samantha
#'
#' This function labels summary statistics on a ggplot boxplot using notches. The summary statistics reported
#' are the minimum, maximum, Q1, Q3 and median. To use the function, you must specify a vector \code{x}.
#'
#' @param obj samantha object to be plotted
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
#' x <- runif(1000, 0, 10)
#' class(x) <- "samantha"
#' ggbox_lbls(x)
#'

ggbox_lbls.samantha <- function(obj, color = "lightblue", ...) {

  samantha.obj <- obj
  class(samantha.obj) <- "numeric" # NOTE: I'm unsure how to make this into a boxplot if it's not a numeric class

  samantha.obj <- as.data.frame(samantha.obj)
  g <- ggplot(data = samantha.obj, aes(x = "", y = samantha.obj)) +
    geom_boxplot(fill = color, notch = TRUE) +
    annotate("text", x = 0.8, y = quantile(samantha.obj[,1], 0.55), label =  paste("Median = ", round(median(samantha.obj[,1]),2))) +
    annotate("text", x = 0.8, y = quantile(samantha.obj[,1], 0.30), label =  paste("Q1 = ", round(quantile(samantha.obj[,1], 0.25),2))) +
    annotate("text", x = 0.8, y = quantile(samantha.obj[,1], 0.80), label =  paste("Q3 = ", round(quantile(samantha.obj[,1], 0.75), 2))) +
    annotate("text", x = 0.8, y = min(samantha.obj[,1]), label =  paste("Min = ", round(min(samantha.obj[,1]),2))) +
    annotate("text", x = 0.8, y = max(samantha.obj[,1]), label =  paste("Max = ", round(max(samantha.obj[,1]),2)))
  g
}
