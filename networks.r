# library ----------------------------------------------------------------------
library(tidyverse)
library(igraph)
library(visNetwork)

# define network --------------------------------------------------------------
network <- tibble(to = c("cpt","cpt","cpt","cpt"),
                  from = c("pl1","pl2","pl3","pl4"),
                  value = c(4,4,4,4))

# create igraph object --------------------------------------------------------
inetwork <- graph_from_data_frame(network)
E(inetwork)$weight <- network$value

# calc network metrics --------------------------------------------------------
pr <- page_rank(inetwork)$vector
eig <- eigen_centrality(inetwork)$vector


# create visnet object --------------------------------------------------------
visnet <- toVisNetworkData(inetwork)

visnet$nodes$value <- eig 

# plot object -----------------------------------------------------------------
visNetwork(nodes = visnet$nodes, edges = visnet$edges) %>%
  visEdges()
