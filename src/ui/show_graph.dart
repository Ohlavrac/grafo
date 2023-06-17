import '../data/models/graph.dart';

class ShowGraph {
  ShowGraph();


  void showGraphData(List<Graph> graphs) {

    for (int i = 0; i < graphs.length; i++) {
      print("ID        ${graphs[i].id}");
      print("VETICES:  ${graphs[i].nodes}");
      print("ARESTAS:  ${graphs[i].edges[0].edges}");
    }
  }

  void showGraphDataMultigraph(List<Graph> graphs) {
    for (int i = 0; i < graphs.length; i++) {
      print("ID        ${graphs[i].id}  [MULTIGRAFO]");
      print("VETICES:  ${graphs[i].nodes}");
      print("ARESTAS:  ${graphs[i].edges[0].edges}");
    }
  }
}