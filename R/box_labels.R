

box.lbls <- function(x, color = NULL) {
    boxplot(x, col = color)
    text(x = 0.65, y = median(x), labels = paste("Median = ", median(x)))
    text(x = 0.65, y = quantile(x, 0.25), labels = paste("Q1 = ", quantile(x, 0.25)))
    text(x = 0.65, y = quantile(x, 0.75), labels = paste("Q3 = ", quantile(x, 0.75)))
    text(x = 0.65, y = min(x), labels = paste("Min = ", min(x)))
    text(x = 0.65, y = max(x), labels = paste("Max = ", max(x)))
}

