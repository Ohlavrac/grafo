import 'dart:io';

import '../core/graphs_json.dart';
import '../domain/usecases/get_graph_by_id.dart';
import '../domain/usecases/get_reachable_vertices.dart';

void main() {
  final GetGraphById getGraphById = GetGraphById();
  final GetReachableVertices getReachableVertices = GetReachableVertices();

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

    print(getReachableVertices.getReachableVertices(graphIdInt-1, node!));
  }
}