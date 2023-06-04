import '../../data/models/graph.dart';
import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetMultiGraphs {
  late Repository repository;
  
  GetMultiGraphs() : repository = LocalRepository();

  List<Graph> getMultiGraphs() {
    final response = repository.getMultiGraphs();
    return response;
  }
}