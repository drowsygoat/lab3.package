#' LAB 3 PACKAGE
#' 
#' Solutions to Lab 3 in Advanced R programming (73A94) at Linkoping University fall 2021. The package estimates Euclidean distance and implements Djikstra's algorithm to find the shortest path between two nodes. 
#' @docType package
#' @author Lech Kaczmarczyk \email{lech.kaczmarczyk@liu.se} 
#' @author Elis Carlberg Larsson \email{elis.carlberg.larsson@liu.se}
#' @name lab3.package
NULL

#'
#' A data set containing a graph taken from the Wikipedia page of Dijkstra's algorithm.
#'
#' @format A data frame with 18 rows and 3 variables.
#' @name wiki_graph
#' \describe{
#'   \item{v1}{Edges of the graph.}
#'   \item{v2}{Edges of the graph.}
#'   \item{w}{Weight of the edge.}
#' }
#' @docType data
#' @keywords datasets
#' @source \url{https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm}
"wiki_graph"
