import '../data/models/graph.dart';

class ShowGraph {
  ShowGraph();


  void showGraphData(Graph graph) {
    print("ID        ${graph.id} [MULTIGRAFO]");
    print("VETICES:  ${graph.nodes}");
    print("ARESTAS:  ${graph.edges[0].edges}");
  }
}