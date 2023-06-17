import '../../core/graphs_json.dart';
import '../models/edge.dart';
import '../models/graph.dart';
import 'local_datasource.dart';

class LocalDatasourceImpl implements LocalDatasource {
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
    // TODO: implement getdisconnectedGraphs (ALGUM ALGORITMO DE BUSCA PARA VISITAR TODOS OS VERTICES APARTIR DE OUTROS DEVE DAR CONTA (BFS OU DFS))
    // TODO: inves de implementar duas funções eu posso usar apensar uma para achar os grafos conexos e desconexos e retornar em listas diferentes.
    throw UnimplementedError();
  }
  
  @override
  List<Graph> getConnectedGraphs() {
    var allgraphs = graphs;
    List<Graph> completeGraphs = [];

    for (int index = 0; index < allgraphs.length; index++) {
      int edges_count = allgraphs[index].nodes.length * (allgraphs[index].nodes.length - 1) ~/ 2;

      if (allgraphs[index].edges.length == edges_count) {
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
}