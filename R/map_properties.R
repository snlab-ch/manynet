#' Describing network properties
#' 
#' @description These functions extract certain attributes from given network data.
#'   They are also useful as helpers within other functions.
#' @return `network_*()` functions always relate to the overall graph or network,
#'   usually returning a scalar.
#'   `network_dims()` returns an integer of the number of nodes in a one-mode network,
#'   or two integers representing the number of nodes in each nodeset 
#'   in the case of a two-mode network.
#'   `network_*_attributes()` returns a string vector with the names
#'   of all node or tie attributes in the network.
#' @name properties
#' @family mapping
#' @inheritParams is
NULL

#' @describeIn properties Returns the total number of nodes (of any mode) in a network.
#' @examples
#' network_nodes(ison_southern_women)
#' @export
network_nodes <- function(.data){
  igraph::vcount(as_igraph(.data))
}

#' @describeIn properties Returns the number of edges in a network.
#' @examples
#' network_ties(ison_southern_women)
#' @export
network_ties <- function(.data){
  igraph::ecount(as_igraph(.data))
}

#' @describeIn properties Returns the dimensions of a network in a vector
#'   as long as the number of modes in the network.
#' @examples
#' network_dims(ison_southern_women)
#' network_dims(to_mode1(ison_southern_women))
#' @export
network_dims <- function(.data) UseMethod("network_dims")

#' @export
network_dims.data.frame <- function(.data){
  if(is_twomode(.data)){
    c(length(unique(.data[,1])),
      length(unique(.data[,2])))
  } else {
    length(unique(c(.data[,1], .data[,2])))
  }
}

#' @export
network_dims.matrix <- function(.data){
  if(is_twomode(.data)){
    c(nrow(.data),
      ncol(.data))
  } else {
    nrow(.data)
  }
}

#' @export
network_dims.igraph <- function(.data){
  if(is_twomode(.data)){
    c(sum(!igraph::V(.data)$type),
      sum(igraph::V(.data)$type))
  } else {
    igraph::vcount(.data)
  }
}

#' @importFrom network network.size get.network.attribute
#' @export
network_dims.network <- function(.data){
  out <- network::network.size(.data)
  if(is_twomode(.data)){
    bip1 <- network::get.network.attribute(as_network(.data), 
                                         "bipartite")
    out <- c(bip1, out - bip1)
  }
  out
}

#' @describeIn properties Returns a vector of nodal attributes in a network
#' @importFrom igraph list.vertex.attributes
#' @examples
#'   network_node_attributes(ison_lotr)
#' @export
network_node_attributes <- function(.data){
  igraph::list.vertex.attributes(as_igraph(.data))
}

#' @describeIn properties Returns a vector of edge attributes in a network
#' @importFrom igraph edge_attr_names
#' @examples
#'   network_tie_attributes(ison_algebra)
#' @export
network_tie_attributes <- function(.data){
  igraph::edge_attr_names(as_igraph(.data))
}
