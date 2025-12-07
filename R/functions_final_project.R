#' Homework mean with input validation
#' @param x numeric vector
#' @param na.rm remove NAs?
#' @return mean value
#' @export
hw_mean <- function(x, na.rm = TRUE) {
  if (!is.numeric(x)) {
    stop("hw_mean only works on numeric vectors.")
  }
  mean(x, na.rm = na.rm)
}

#' S3 constructor for homework statistics
#' @param x numeric vector
#' @return hw_stats object
#' @export
hw_stats <- function(x) {
  if (!is.numeric(x)) {
    stop("hw_stats needs numeric data.")
  }
  out <- list(
    mean = mean(x, na.rm = TRUE),
    sd   = stats::sd(x, na.rm = TRUE),
    n    = sum(!is.na(x))
  )
  class(out) <- "hw_stats"
  out
}

#' Print method for hw_stats S3 class
#' @param x hw_stats object
#' @param ... passed to print
#' @export
print.hw_stats <- function(x, ...) {
  cat("Homework stats:\n")
  cat("  n    :", x$n, "\n")
  cat("  mean :", round(x$mean, 3), "\n")
  cat("  sd   :", round(x$sd, 3), "\n")
}

#' Quick histogram - FIXED VERSION
#' @export
#' @import ggplot2
hw_hist <- function(x, bins = 30) {
  if (!is.numeric(x)) stop("hw_hist needs numeric data.")
  ggplot2::ggplot(data.frame(x = x), ggplot2::aes(x)) +
    ggplot2::geom_histogram(bins = bins, fill = "steelblue", color = "black", alpha = 0.7) +
    ggplot2::labs(title = "Homework Scores", x = "Score", y = "Count") +
    ggplot2::theme_minimal()
}

