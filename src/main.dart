import 'domain/usecases/get_graph_by_id.dart';
import 'domain/usecases/get_graphs.dart';
import 'dart:io';

import 'domain/usecases/get_multigraphs.dart';
import 'domain/usecases/get_pseudograph.dart';
import 'domain/usecases/get_vertexdegree_by_id.dart';
import 'ui/terminal_menu.dart';

void main() {
  final TerminalMenu menu = TerminalMenu();

  final GetGraphs getGraphs = GetGraphs();
  final GetGraphById getGraphById = GetGraphById();
  final GetMultiGraphs getMultiGraphs = GetMultiGraphs();
  final GetPseudoGraph getPseudoGraph = GetPseudoGraph();
  final GetVertexDegreeById getVertexDegreeById = GetVertexDegreeById();
  final graphs = getGraphs.getGraphs();
  String? option;

  while (true) {
    menu.drawnMenu();
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
    } else if (option == "6") {
      for (int i = 0; i < getVertexDegreeById.getVertexDegreeById(0).length; i++) {
        print("VERTICE [${getGraphById.getGraphById(0).nodes[i]}] GRAU ${getVertexDegreeById.getVertexDegreeById(0)[i]}");
      }
      print("ENTER para continuar...");
      String? continu = stdin.readLineSync();
      if (continu != null) {
        continue;
      }
    } else {
      print("ERRO");
    }
  }
}
