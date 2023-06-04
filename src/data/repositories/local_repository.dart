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
}