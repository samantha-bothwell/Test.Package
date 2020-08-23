#' Summary Labels for Boxplots in GGplot
#'
#' This function labels summary statistics on a ggplot boxplot. The summary statistics reported
#' are the minimum, maximum, Q1, Q3 and median. To use the function, you must specify a vector \code{x}.
#'
#'
#' @param obj object to be plotted. Currently, allowed data types are \code{samantha} and \code{numeric}.
#' @param ... additional arguments passed to plotting functions
#'
#'
#' @author Samantha Bothwell \email{samantha.bothwell@@cuanschutz.edu}
#' @export
#'
#' @import ggplot2
#' @export ggbox_lbls
#'
#' @examples
#'
#' \dontrun{
#'
#' ggbox_lbls(rnorm(1000), color = "pink")
#'
#' x <- runif(1000, 0, 10)
#' class(x) <- "samantha"
#' ggbox_lbls(x)
#'
#'}
#'

ggbox_lbls <- function(obj, ...) {
  UseMethod("ggbox_lbls")
}


