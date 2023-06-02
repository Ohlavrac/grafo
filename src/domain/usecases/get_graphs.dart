import '../../data/models/graph.dart';
import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetGraphs {
  late Repository repository;

  GetGraphs() : repository = LocalRepository();

  List<Graph> getGraphs() {
    final response = repository.getGraphs();
    return response;
  }
}