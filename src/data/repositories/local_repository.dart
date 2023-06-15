import '../../domain/repositories/repository.dart';
import '../datasources/local_datasourceImpl.dart';
import '../models/graph.dart';

class LocalRepository extends Repository {
  LocalRepository() : super (local: LocalDatasourceImpl());

  @override
  List<Graph> getGraphs() {
    return local.getGraphs();
  }
  
  @override
  Graph getGraphById(int id) {
    return local.getGraphById(id);
  }
  
  @override
  List<Graph> getMultiGraphs() {
    return local.getMultiGraphs();
  }

  @override
  List<Graph> getPseudographs() {
    return local.getPseudographs();
  }
  
  @override
  List<Graph> getdisconnectedGraphs() {
    return local.getdisconnectedGraphs();
  }
  
  @override
  List<Graph> getConnectedGraphs() {
    return local.getConnectedGraphs();
  }
  
  @override
  List<int> getVertexDegreeById(int id) {
    return local.getVertexDegreeById(id);
  }
  
  @override
  List<int> getVertexDegreeByIdAndNode(int id, String node) {
    return local.getVertexDegreeByIdAndNode(id, node);
  }
}