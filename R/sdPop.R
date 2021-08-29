#' Calculate standard deviation from a population instead of a sample
#'
#' This function calculates the standard deviation from a population (this means it
#' is divided by *n*, not by *n-1*). It returns a numeric value indicating the standard
#' deviation for a given numeric vector.
#'
#' @param x A numeric vector.
#' @param na.rm Logical. Remove missing values.
#' @keywords standard deviation, population
#' @export
#' @examples
#' x <- runif(50)
#' sd.population(x)
sd.population <- function(x, na.rm = FALSE){
  n <- length(x)
  a <- na.rm
  if (class(x) != 'numeric')
    stop("Data must be a numeric vector")
  if (n < 4)
    stop("Population must be greater than 3")
  if(sum(is.na(x)) > 0 && a == FALSE)
    stop("NA's detected")
  if(sum(is.na(x)) > 0 && a == TRUE){
    z <- sqrt(sum((x[!is.na(x)]-mean(x, na.rm = TRUE))^2)/(n-sum(is.na(x))))
    return(z)
  } else {
    z <- sqrt(sum((x-mean(x, na.rm = FALSE))^2)/n)
    return(z)
  }
}
