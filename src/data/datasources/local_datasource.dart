import '../models/graph.dart';

abstract class LocalDatasource {
  List<Graph> getGraphs();
  Graph getGraphById(int id);
  List<Graph> getMultiGraphs();
  List<Graph> getPseudographs();
  List<Graph> getdisconnectedGraphs();
  List<Graph> getConnectedGraphs();
  List<int> getVertexDegreeById(int id);
}