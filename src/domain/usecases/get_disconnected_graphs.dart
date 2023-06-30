import '../../data/models/graph.dart';
import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetDisconnectedGraphs {
  late Repository repository;

  GetDisconnectedGraphs() : repository = LocalRepository();

  List<Graph> getDisconnectedGraphs() {
    final response = repository.getdisconnectedGraphs();
    return response;
  }
}