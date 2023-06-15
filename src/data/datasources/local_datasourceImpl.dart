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
    List visited = [];
    List stack = [];
    List<Graph> seila = [];
    
    for (int i = 0; i < allgraphs.length; i++) {
      visited.add(allgraphs[i].nodes[0]);
      stack.add(allgraphs[i].nodes[0]);

      while (stack.isNotEmpty) {
        var s = stack.removeLast();
        print("$s last");
        print(stack);
        print(visited);

        for (int i2 = 0; i2 < 1; i2++) {
          for (int i3 = 0; i3 < allgraphs[i].edges[i2].edges.length; i3++) {
            print(allgraphs[i].edges[i2].edges[i3]);
            if (allgraphs[i].edges[i2].edges[i3].contains(s)) {
              stack.add(allgraphs[i].edges[i2].edges[i3].last);
            }
          }
        }
      }
    }

    return seila;
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