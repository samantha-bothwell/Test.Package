#' Summary Labels for Boxplots in GGplot
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

ggbox_lbls <- function(obj, ...) {
  UseMethod("ggbox_lbls")
}


