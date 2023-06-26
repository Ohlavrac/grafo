import '../domain/usecases/get_connected_graphs.dart';
import '../ui/show_graph.dart';

void main() {
  final GetConnectedGraphs getConnectedGraphs = GetConnectedGraphs();
  final ShowGraph showGraph = ShowGraph();

  print(getConnectedGraphs.getConnectedGraphs());
  showGraph.showGraphData(getConnectedGraphs.getConnectedGraphs());
}