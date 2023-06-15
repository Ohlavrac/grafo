import '../../data/models/graph.dart';
import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetConnectedGraphs {
  late Repository repository;
  
  GetConnectedGraphs() : repository = LocalRepository();

  List<Graph> getConnectedGraphs() {
    final response = repository.getConnectedGraphs();
    return response;
  }
}