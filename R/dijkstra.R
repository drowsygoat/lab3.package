
# dijkstra function returning the shortest distance from a starting vertex of the graph to every other vertex
#' @export
dijkstra <- function(graph, init_node){
        # input validation
        stopifnot("Graph must be provided as a dataframe with 3 columns named 'v1', 'v2', and 'w'" = is.data.frame(graph) & colnames(graph) == c("v1", "v2", "w"))
        stopifnot("Initial vertex is not present the provided graph" = init_node %in% graph[, 1])
        # distances from the start vertex to all other verices
        distances <-  rep(Inf, length(unique(graph[ , 1])))
        # was a vertex was already visited
        visited <-  rep(FALSE, length(unique(graph[ , 1])))
        # set the distance to the start vertex to 0
        distances[init_node] <- 0
        # While there are nodes left to visit...
        repeat{
                shortest_distance <- Inf
                shortest_index <- -1
                for(i in seq_along(distances)) {
                        if(distances[i] < shortest_distance & !visited[i]){
                                shortest_distance <- distances[i]
                                shortest_index <- i
                        }
                }
                if (shortest_index > 0){
                        message(" Visiting vertex ", shortest_index, " with current distance ", shortest_distance, "\n")
                }
                if(shortest_index == -1) { # finish if no more vertices to visit and return the vector of distances
                        message("Done")
                        return(distances)
                }
                for(i in 1:nrow(graph[which(graph[ ,1] == shortest_index), ])){ # otherwise iterate over neighbours of the current start vertex
                        # obtaining correct index for the vector with distances
                        neigh_vert_ind <- graph[which(graph[ ,1] == shortest_index), ][i, 2]
                        if(graph[which(graph[ ,1] == shortest_index), ][i, 3] != 0 & distances[neigh_vert_ind] > distances[shortest_index] + graph[which(graph[ ,1] == shortest_index), ][i, 3]) {
                                # updating the distance if a shorter path was found
                                distances[neigh_vert_ind] <- distances[shortest_index] + graph[which(graph[ ,1] == shortest_index), ][i, 3]
                        }
                }
                visited[shortest_index] <- TRUE
        }
}
