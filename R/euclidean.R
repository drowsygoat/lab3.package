#' Function to calculate greatest common divisor of two numbers (x and y) using the Euclidean algorithm based on pseudocode from Wikipedia.
#'@param x a numeric scalars or integers.
#'@param y a numeric scalars or integers.
#' @source \url{https://en.wikipedia.org/wiki/Euclidean_distance}
#' @export
euclidean <- function(x, y){
        stopifnot((is.numeric(x) | is.integer(x)) & (is.numeric(y) | is.integer(y)))
        while (y !=0 ){
                z <- y
                y <- x %% y
                x <- z
        }
        return(x)
}