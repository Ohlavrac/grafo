import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetUnReachableVertices {
  late Repository repository;

  GetUnReachableVertices() : repository = LocalRepository();

  List<String> getUnreachableVertices(int id, String node) {
    final response = repository.getUnreachableVertices(id, node);
    return response;
  }
}