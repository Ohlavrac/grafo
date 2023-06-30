import 'dart:io';

import '../core/graphs_json.dart';
import '../domain/usecases/get_graph_by_id.dart';
import '../domain/usecases/get_unreachable_vertices.dart';

void main() {
  final GetGraphById getGraphById = GetGraphById();
  final GetUnReachableVertices getUnReachableVertices = GetUnReachableVertices();

  String? graphId;
  String? node;

  print("Informe o ID do grafo que deseja");
  graphId = stdin.readLineSync();
  int graphIdInt = int.parse(graphId!);

  if (graphIdInt < 1 || graphIdInt > graphs.length) {
    print("GRAFO NÂO ENCONTRADO");
  } else {
    print("Informe o No que deseja entre ${getGraphById.getGraphById(graphIdInt-1).nodes}");
    node = stdin.readLineSync()?.toUpperCase();

    print(getUnReachableVertices.getUnreachableVertices(graphIdInt-1, node!));
  }
}