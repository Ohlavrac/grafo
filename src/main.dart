import 'domain/usecases/get_connected_graphs.dart';
import 'domain/usecases/get_graph_by_id.dart';
import 'domain/usecases/get_graphs.dart';
import 'dart:io';

import 'domain/usecases/get_multigraphs.dart';
import 'domain/usecases/get_pseudograph.dart';
import 'domain/usecases/get_vertexdegree_by_id.dart';
import 'domain/usecases/get_vertexdegree_by_id_and_node.dart';
import 'ui/show_graph.dart';
import 'ui/terminal_menu.dart';

void main() {
  bool run = true;

  final GetGraphs getGraphs = GetGraphs();
  final GetGraphById getGraphById = GetGraphById();
  final GetMultiGraphs getMultiGraphs = GetMultiGraphs();
  final GetPseudoGraph getPseudoGraph = GetPseudoGraph();
  final GetVertexDegreeById getVertexDegreeById = GetVertexDegreeById();
  final GetConnectedGraphs getConnectedGraphs = GetConnectedGraphs();
  final GetVertexDegreeByIdAndNode getVertexDegreeByIdAndNode = GetVertexDegreeByIdAndNode();
  final graphs = getGraphs.getGraphs();
  final TerminalMenu menu = TerminalMenu();
  final ShowGraph showGraph = ShowGraph();

  String? option;

  while (run) {
    print("USE O COMANDO <help> PARA VER TODOS OS COMANDOS");
    option = stdin.readLineSync()!.replaceAll(" ", "");

    print(option);

    switch (option) {
      case "mostrargrafoporid":
        String? graphId;

        print("Informe o ID do grafo que deseja");
        graphId = stdin.readLineSync();

        //showGraph.showGraphData(getGraphById.getGraphById(int.parse(graphId!)));
        break;
      case "mostrargrafos":
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
        break;
      case "mostrarmultigrafos":
        print("LISTA COM IDS DE MULTIGRAFOS");
        showGraph.showGraphDataMultigraph(getMultiGraphs.getMultiGraphs());
        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "mostrarpseudografos":
        print("LISTA COM IDS DE PSEUDOGRAFOS");
        showGraph.showGraphData(getPseudoGraph.getPseudographs());
        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "mostrargrafosdesconexos":
        break;
      case "mostrargrafoscompletos":
        print(getConnectedGraphs.getConnectedGraphs());

        showGraph.showGraphData(getConnectedGraphs.getConnectedGraphs());

        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "grausdosvertices":
        String? graphId;

        print("Informe o ID do grafo que deseja");
        graphId = stdin.readLineSync();

        int graphIdInt = int.parse(graphId!);

        for (int i = 0; i < getVertexDegreeById.getVertexDegreeById(0).length; i++) {
          print("ID [${getGraphById.getGraphById(graphIdInt).id}] VERTICE [${getGraphById.getGraphById(graphIdInt-1).nodes[i]}] GRAU ${getVertexDegreeById.getVertexDegreeById(graphIdInt-1)[i]}");
        }

        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "graudeumvertice":
        String? graphId;
        String? node;

        print("Informe o ID do grafo que deseja");
        graphId = stdin.readLineSync();

        print("Informe o No que deseja");
        node = stdin.readLineSync()?.toUpperCase();

        int graphIdInt = int.parse(graphId!);

        for (int i = 0; i < getVertexDegreeByIdAndNode.getVertexDegreeByIdAndNode(0, node!).length; i++) {
          print("ID [${getGraphById.getGraphById(graphIdInt-1).id}] VERTICE [${getGraphById.getGraphById(graphIdInt-1).nodes[i]}] GRAU ${getVertexDegreeByIdAndNode.getVertexDegreeByIdAndNode(graphIdInt-1, node)[i]}");
        }

        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "help":
        menu.drawnHelp();
        break;
      case "sair":
        run = false;
        break;
      default:
        print("Comando Incorreto");
    }
  }
}