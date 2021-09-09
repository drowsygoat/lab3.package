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
dijkstra(wiki_graph,3)
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
