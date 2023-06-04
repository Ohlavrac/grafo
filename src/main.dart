import 'domain/usecases/get_graph_by_id.dart';
import 'domain/usecases/get_graphs.dart';
import 'dart:io';

import 'domain/usecases/get_multigraphs.dart';
import 'domain/usecases/get_pseudograph.dart';

void main() {
  final GetGraphs getGraphs = GetGraphs();
  final GetGraphById getGraphById = GetGraphById();
  final GetMultiGraphs getMultiGraphs = GetMultiGraphs();
  final GetPseudoGraph getPseudoGraph = GetPseudoGraph();
  final graphs = getGraphs.getGraphs();
  String? option;

  while (true) {
    print("[1]    Lista de Grafos");
    print("[2]    Multigrafos");
    print("[3]    Pseudografos");
    print("[4]    Desconexos");
    print("[5]    Completos");
    print("[6]    Graus ID=1");
    print("[7]    Grau ID=1 Vertice=A");
    print("[8]    Alcancaveis apartir de A");
    print("[9]    Inalcancaveis apartir de A");
    print("[10]   BFS");
    print("[11]   DFS");
    print("[ 0]    Sair");
    option = stdin.readLineSync();
    
    if (option == "0") {
      break;
    } else if (option == "1") {
      print("LISTA DE GRAFOS:");
      print("TOTAL DE GRAFOS [${graphs.length}]");
      for (int index = 0; index < graphs.length; index++) {
        print("-> Grafo ID: ${graphs[index].id} | Vertices: ${graphs[index].nodes}\n");
      }
      print("ENTER para continuar...");
      String? continu = stdin.readLineSync();
      if (continu != null) {
        continue;
      }
    } else if (option == "2") {
      print("LISTA COM IDS DE MULTIGRAFOS");
      for (int i = 0; i < getMultiGraphs.getMultiGraphs().length; i++) {
        print("ID   ${getMultiGraphs.getMultiGraphs()[i].id} [MULTIGRAFO]");
      }
      print("ENTER para continuar...");
      String? continu = stdin.readLineSync();
      if (continu != null) {
        continue;
      }
    } else if (option == "3") {
      print(getPseudoGraph.getPseudographs());
    } else {
      print("ERRO");
    }
  }
}
