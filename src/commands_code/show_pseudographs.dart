import '../domain/usecases/get_pseudograph.dart';
import '../ui/show_graph.dart';

void main() {
  final GetPseudoGraph getPseudoGraph = GetPseudoGraph();
  final ShowGraph showGraph = ShowGraph();
  
  print("LISTA COM IDS DE PSEUDOGRAFOS");
  showGraph.showGraphData(getPseudoGraph.getPseudographs());
}