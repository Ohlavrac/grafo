import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetReachableVertices {
  late Repository repository;

  GetReachableVertices() : repository = LocalRepository();

  List<String> getReachableVertices(int id, String node) {
    final response = repository.getReachableVertices(id, node);
    return response;
  }
}