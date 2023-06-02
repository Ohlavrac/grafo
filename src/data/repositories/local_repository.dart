import '../../domain/repositories/repository.dart';
import '../datasources/local_datasourceImpl.dart';
import '../models/graph.dart';

class LocalRepository extends Repository {
  LocalRepository() : super (local: LocalDatasourceImpl());

  @override
  List<Graph> getGraphs() {
    return local.getGraphs();
  }
}