import '../../data/models/graph.dart';
import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetGraphById {
  late Repository repository;
  
  GetGraphById() : repository = LocalRepository();

  Graph getGraphById(int id) {
    final response = repository.getGraphById(id);
    return response;
  }
}