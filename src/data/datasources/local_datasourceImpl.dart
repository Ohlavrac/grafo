import '../../core/graphs_json.dart';
import '../models/graph.dart';
import 'local_datasource.dart';

class LocalDatasourceImpl implements LocalDatasource {
  List<List<String>> getEdges(int id) {
    var thegraph = graphs[id];
    List<List<String>> edges = [];
    for (int index = 0; index < 1; index++) {
      for (int index2 = 0; index2 < 1; index2++) {
        for (int index3 = 0; index3 < thegraph.edges[index2].edges.length; index3++) {
            edges.add(thegraph.edges[index2].edges[index3]);
          }
      }
    }

    return edges;
  }

  @override
  List<Graph> getGraphs() {
    return graphs;
  }
  
  @override
  Graph getGraphById(int id) {
    return graphs[id];
  }
  
  @override
  List<Graph> getMultiGraphs() {
    var allgraphs = graphs;
    List<Graph> multigraphs = [];

    ouderloop:
    for (int index = 0; index < allgraphs.length; index++) {
      for (int index2 = 0; index2 < allgraphs[index].edges.length; index2++) {
        for (int index3 = 0; index3 < allgraphs[index].edges[index2].edges.length; index3++) {
          for (int i = index3 + 1; i < allgraphs[index].edges[index2].edges.length; i++) {
            if (allgraphs[index].edges[index2].edges[index3] == allgraphs[index].edges[index2].edges[i]) {
              multigraphs.add(allgraphs[index]);
              continue ouderloop;
            }
          }
        }
      }
    }
    return multigraphs;
  }
  
  @override
  List<Graph> getPseudographs() {
    var allgraphs = graphs;
    List<Graph> pseudographs = [];

    ouderloop:
    for (int index = 0; index < allgraphs.length; index++) {
      for (int index2 = 0; index2 < allgraphs[index].edges.length; index2++) {
        for (int index3 = 0; index3 < allgraphs[index].edges[index2].edges.length; index3++) {
          if (allgraphs[index].edges[index2].edges[index3].first == allgraphs[index].edges[index2].edges[index3].last) {
            pseudographs.add(allgraphs[index]);
            continue ouderloop;
          }
        }
      }
    }

    return pseudographs;
  }
  
  @override
  List<Graph> getdisconnectedGraphs() {
    List<Graph> disconnectedGraphs = [];
    List<List<String>> adj = [];

    for (int z = 0; z < graphs.length; z++) {
      var thegraph = graphs[z];
      List<List<String>> edges = getEdges(z);
      int maxVertex = thegraph.nodes.length;
      List<String> nodes = thegraph.nodes;
      
      for (int c = 0; c < maxVertex; c++) {
        adj.add([]);
      }

      for (int i = 0; i < nodes.length; i++) {
        for (int x = 0; x < maxVertex; x++) {
          if (edges[x].contains(nodes[i])) {
            if (edges[x].first != nodes[i]) {
              adj[i].add(edges[x].first);
            } else if (edges[x].last != nodes) {
              adj[i].add(edges[x].last);
            }
          }
        }
      }

      print(adj);
      edges.clear();
      nodes.clear();
      adj.clear();
    }

    return disconnectedGraphs;
  }
  
  @override
  List<Graph> getConnectedGraphs() {
    var allgraphs = graphs;
    List<Graph> completeGraphs = [];

    for (int index = 0; index < allgraphs.length; index++) {
      int edges_count = (allgraphs[index].nodes.length * (allgraphs[index].nodes.length - 1)) ~/ 2;

      if (allgraphs[index].edges[1].edges.length == edges_count) {
        completeGraphs.add(allgraphs[index]);
      }
    }

    return completeGraphs;
  }
  
  @override
  List<int> getVertexDegreeById(int id) {
    var thegraph = graphs[id];
    List<int> degreesOfTheVertex = [];
    int count = 0;

    for (int index = 0; index < thegraph.nodes.length; index++) {
      for (int index2 = 0; index2 < 1; index2++) {
        for (int index3 = 0; index3 < thegraph.edges[index2].edges.length; index3++) {
          if (thegraph.nodes[index] == thegraph.edges[index2].edges[index3].first || thegraph.nodes[index] == thegraph.edges[index2].edges[index3].last) {
            count++;
          }
        }
      }
      degreesOfTheVertex.add(count);
      count = 0;
      
    }
    return degreesOfTheVertex;
  }

  @override
  List<int> getVertexDegreeByIdAndNode (int id, String node) {
    var thegraph = graphs[id];
    List<int> degreesOfTheVertex = [];
    int count = 0;

    for (int index = 0; index < 1; index++) {
      for (int index2 = 0; index2 < 1; index2++) {
        for (int index3 = 0; index3 < thegraph.edges[index2].edges.length; index3++) {
          if (node == thegraph.edges[index2].edges[index3].first || node == thegraph.edges[index2].edges[index3].last) {
            count++;
          }
        }
      }
      degreesOfTheVertex.add(count);
      count = 0;
    }
    return degreesOfTheVertex;
  }
  
  @override
  List<String> getReachableVertices(int id, String node) {
    var thegraph = graphs[id];
    List<String> queue = [];
    queue.add(node);
    List<String> reachableVertices = [];

    while (queue.isNotEmpty) {
      String local_vertex = queue.removeAt(0);
      for (int index = 0; index < 1; index++) {
        for (int index2 = 0; index2 < 1; index2++) {
          for (int index3 = 0; index3 < thegraph.edges[index2].edges.length; index3++) {
            if (thegraph.edges[index2].edges[index3].first == local_vertex && reachableVertices.contains(thegraph.edges[index2].edges[index3].last) == false) {
              reachableVertices.add(thegraph.edges[index2].edges[index3].last);
              queue.remove(thegraph.edges[index2].edges[index3].last);
            } else if (thegraph.edges[index2].edges[index3].last == local_vertex && reachableVertices.contains(thegraph.edges[index2].edges[index3].first) == false) {
              reachableVertices.add(thegraph.edges[index2].edges[index3].first);
              queue.remove(thegraph.edges[index2].edges[index3].first);
            }
          }
        }
      }
    }

    return reachableVertices;
  }
  
  @override
  List<String> getUnreachableVertices(int id, String node) {
    var thegraph = graphs[id];
    List<String> thegraphNodes = List<String>.from(thegraph.nodes);
    thegraphNodes.remove(node);
    List<String> reachableVertices = getReachableVertices(id, node);
    List<String> unreachableVertices = [];

    for (int index = 0; index < reachableVertices.length; index++) {
      if (reachableVertices[index] == thegraphNodes[index]) {
        continue;
      } else {
        unreachableVertices.add(thegraphNodes[index]);
      }
    }

    return unreachableVertices;
  }
}