import '../domain/usecases/get_multigraphs.dart';
import '../ui/show_graph.dart';

void main() {
  final GetMultiGraphs getMultiGraphs = GetMultiGraphs();
  final ShowGraph showGraph = ShowGraph();
  
  print("LISTA COM IDS DE MULTIGRAFOS");
  showGraph.showGraphDataMultigraph(getMultiGraphs.getMultiGraphs());
}