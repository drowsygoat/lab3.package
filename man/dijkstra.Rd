\name{dijkstra}
\alias{dijkstra}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Dijkstra function
}
\description{
Function computes shortest distances between nodes in the graph.}
\usage{
dijkstra(graph, init_node)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{graph}{
A data frame with 3 columns labelled c("v1", "v2", "w")
}
  \item{init_node}{
A vertex in the graph to compute shortest distances to.}
}
\details{
This was a lab practice.
}
\value{
A vector with distances.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Lech Kaczmarczyk and Elis Carlberg Larsson
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (graph, init_node)
{
    stopifnot(`Graph must be provided as a dataframe with 3 columns named 'v1', 'v2', and 'w'` = is.data.frame(graph) &
        colnames(graph) == c("v1", "v2", "w"))
    stopifnot(`Initial vertex is not present the provided graph` = init_node \%in\%
        graph[, 1])
    distances <- rep(Inf, length(unique(graph[, 1])))
    visited <- rep(FALSE, length(unique(graph[, 1])))
    distances[init_node] <- 0
    repeat {
        shortest_distance <- Inf
        shortest_index <- -1
        for (i in seq_along(distances)) {
            if (distances[i] < shortest_distance & !visited[i]) {
                shortest_distance <- distances[i]
                shortest_index <- i
            }
        }
        if (shortest_index > 0) {
            message(" Visiting vertex ", shortest_index, " with current distance ",
                shortest_distance, "\n")
        }
        if (shortest_index == -1) {
            message("Done")
            return(distances)
        }
        for (i in 1:nrow(graph[which(graph[, 1] == shortest_index),
            ])) {
            neigh_vert_ind <- graph[which(graph[, 1] == shortest_index),
                ][i, 2]
            if (graph[which(graph[, 1] == shortest_index), ][i,
                3] != 0 & distances[neigh_vert_ind] > distances[shortest_index] +
                graph[which(graph[, 1] == shortest_index), ][i,
                  3]) {
                distances[neigh_vert_ind] <- distances[shortest_index] +
                  graph[which(graph[, 1] == shortest_index),
                    ][i, 3]
            }
        }
        visited[shortest_index] <- TRUE
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
