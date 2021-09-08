# function to calculate greatest common divisor of two numbers (x and y) using the Euclidean algorithm based on psudocode from Wikipedia
euclidean <- function(x, y){
        stopifnot((is.numeric(x) | is.integer(x)) & (is.numeric(y) | is.integer(y)))
        while (y !=0 ){
                z <- y
                y <- x %% y
                x <- z
        }
        return(x)
}
