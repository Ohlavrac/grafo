import '../domain/usecases/get_graphs.dart';
import '../ui/terminal_menu.dart';

void main() {
  final GetGraphs getGraphs = GetGraphs();
  final graphs = getGraphs.getGraphs();

  print("LISTA DE GRAFOS:");
        print("TOTAL DE GRAFOS [${graphs.length}]");
        for (int index = 0; index < graphs.length; index++) {
          print("-> Grafo ID: ${graphs[index].id} | Vertices: ${graphs[index].nodes}\n");
        }
}