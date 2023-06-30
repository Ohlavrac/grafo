import 'dart:io';

import '../core/graphs_json.dart';
import '../domain/usecases/get_graph_by_id.dart';
import '../domain/usecases/get_vertexdegree_by_id_and_node.dart';

void main() {
  final GetVertexDegreeByIdAndNode getVertexDegreeByIdAndNode = GetVertexDegreeByIdAndNode();
  final GetGraphById getGraphById = GetGraphById();

  String? graphId;
  String? node;

  print("Informe o ID do grafo que deseja");
  graphId = stdin.readLineSync();
  int graphIdInt = int.parse(graphId!);

  if (graphIdInt < 1 || graphIdInt > graphs.length) {
    print("GRAFO NÂO ENCONTRADO");
  } else {
    print("Informe o No que deseja");
    node = stdin.readLineSync()?.toUpperCase();

    for (int i = 0; i < getVertexDegreeByIdAndNode.getVertexDegreeByIdAndNode(0, node!).length; i++) {
      print("ID [${getGraphById.getGraphById(graphIdInt-1).id}] VERTICE [${getGraphById.getGraphById(graphIdInt-1).nodes[i]}] GRAU ${getVertexDegreeByIdAndNode.getVertexDegreeByIdAndNode(graphIdInt-1, node)[i]}");
    }
  }
}