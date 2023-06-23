import '../../data/datasources/local_datasource.dart';
import '../../data/models/graph.dart';

abstract class Repository {
  late LocalDatasource local;

  Repository({required this.local});

  List<Graph> getGraphs();
  Graph getGraphById(int id);
  List<Graph> getMultiGraphs();
  List<Graph> getPseudographs();
  List<Graph> getdisconnectedGraphs();
  List<Graph> getConnectedGraphs();
  List<int> getVertexDegreeById(int id);
  List<int> getVertexDegreeByIdAndNode (int id, String node);
  List<String> getReachableVertices (int id, String node);
  List<String> getUnreachableVertices (int id, String node);
}