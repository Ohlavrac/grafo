import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetVertexDegreeById {
  late Repository repository;

  GetVertexDegreeById() : repository = LocalRepository();

  List<int> getVertexDegreeById(int id) {
    final response = repository.getVertexDegreeById(id);
    return response;
  }
}