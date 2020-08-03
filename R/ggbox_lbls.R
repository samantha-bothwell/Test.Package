#' Summary Labels for Boxplots in GGplot
#'
#' This function labels summary statistics on a ggplot boxplot. The summary statistics reported
#' are the minimum, maximum, Q1, Q3 and median. To use the function, you must specify a vector \code{x}.
#'
#' Function used in the registration step of an FPCA-based approach for
#' registering exponential-family functional data, called by \code{\link{register_fpca}}.
#' This method uses constrained optimization to estimate spline
#' coefficients for warping functions, where the objective function for optimization comes from
#' maximizing the EF likelihood subject to monotonicity constraints on the warping functions.
#' You have to either specify \code{obj}, which is a fpca
#' object from an earlier step, or \code{Y}, a dataframe in long format with variables
#' \code{id}, \code{index}, and \code{value} to indicate subject IDs, times, and observations,
#' respectively.
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
#' box_lbls(rnorm(1000), color = "pink")
#'
#' x <- c(1,6,3,9,7,5,9,16,4)
#' box_lbls(x, color = "lightblue")
#'
