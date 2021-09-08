euclidean <- function(x, y) {
  if (!(is.integer(x) | is.numeric(x)) & length(x) != 1L) {
    stop("x is not a numeric integer or scalar.")
  }
  if (!(is.integer(y) | is.numeric(y)) | length(y) != 1L) {
    stop("y is not a numeric integer or scalar.")
  }
  sqrt(sum((x - y) ^ 2)) # sth wrong here?
}
