import 'dart:io';

import '../domain/usecases/get_graph_by_id.dart';
import '../domain/usecases/get_vertexdegree_by_id.dart';

void main() {
  final GetGraphById getGraphById = GetGraphById();
  final GetVertexDegreeById getVertexDegreeById = GetVertexDegreeById();
  String? graphId;

  print("Informe o ID do grafo que deseja");
  graphId = stdin.readLineSync();

  int graphIdInt = int.parse(graphId!);

  for (int i = 0; i < getVertexDegreeById.getVertexDegreeById(0).length; i++) {
    print("ID [${getGraphById.getGraphById(graphIdInt).id}] VERTICE [${getGraphById.getGraphById(graphIdInt-1).nodes[i]}] GRAU ${getVertexDegreeById.getVertexDegreeById(graphIdInt-1)[i]}");
  }
}