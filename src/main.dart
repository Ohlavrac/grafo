import 'domain/usecases/get_graph_by_id.dart';
import 'domain/usecases/get_graphs.dart';
import 'dart:io';

import 'domain/usecases/get_multigraphs.dart';
import 'domain/usecases/get_pseudograph.dart';
import 'domain/usecases/get_vertexdegree_by_id.dart';
import 'ui/show_graph.dart';

void main() {
  bool run = true;

  final GetGraphs getGraphs = GetGraphs();
  final GetGraphById getGraphById = GetGraphById();
  final GetMultiGraphs getMultiGraphs = GetMultiGraphs();
  final GetPseudoGraph getPseudoGraph = GetPseudoGraph();
  final GetVertexDegreeById getVertexDegreeById = GetVertexDegreeById();
  final graphs = getGraphs.getGraphs();
  final ShowGraph showGraph = ShowGraph();

  String? option;

  while (run) {
    //menu.drawnMenu();
    print("USE O COMANDO <help> PARA VER TODOS OS COMANDOS");
    option = stdin.readLineSync()!.replaceAll(" ", "");

    print(option);

    switch (option) {
      case "mostrargrafoporid":
        String? graphId;

        print("Informe o ID do grafo que deseja");
        graphId = stdin.readLineSync();

        showGraph.showGraphData(getGraphById.getGraphById(int.parse(graphId!)));
        break;
      case "mostrartodososgrafos":
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
        for (int i = 0; i < getMultiGraphs.getMultiGraphs().length; i++) {
          showGraph.showGraphData(getMultiGraphs.getMultiGraphs()[i]);
        }
        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "mostrarpseudografos":
        print("LISTA COM IDS DE PSEUDOGRAFOS");
        for (int i = 0; i < getPseudoGraph.getPseudographs().length; i++) {
          showGraph.showGraphData(getPseudoGraph.getPseudographs()[i]);
        }
        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "mostrargrafosdesconexos":
        break;
      case "mostrargrafoscompletos":
        break;
      case "grausdosvertices":
        String? graphId;

        print("Informe o ID do grafo que deseja");
        graphId = stdin.readLineSync();

        for (int i = 0; i < getVertexDegreeById.getVertexDegreeById(0).length; i++) {
          print("VERTICE [${getGraphById.getGraphById(int.parse(graphId!)).nodes[i]}] GRAU ${getVertexDegreeById.getVertexDegreeById(int.parse(graphId))[i]}");
        }
        print("ENTER para continuar...");
        String? continu = stdin.readLineSync();
        if (continu != null) {
          continue;
        }
        break;
      case "help":
        print("EXEMPLO DE COMANDOS");
        print(">mostrar todos os grafos = Como o nome diz esse comando mostra todos os grafos carregados");
        print(">mostrar multigrafos = Esse comando mostra os multigrafos da lista de grafos");
        print(">mostrar pseudografos = Esse comando mostra todos os pseudografos da lista de grafos");
        print(">mostrar grafos desconexos = Esse comando mostra todos os grafos desconexos da listra de grafos");
        print(">mostrar grafos completos = Esse comando mostra todos os grafos complexto da lista de grafos");
        print(">graus dos vertices = Esse comando é usado para mostrar o grau de todos os vertices de um grafo informado");
        break;
      case "sair":
        run = false;
        break;
      default:
        print("Comando Incorreto");
    }
  }
}
