import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetVertexDegreeByIdAndNode {
  late Repository repository;
  
  GetVertexDegreeByIdAndNode() : repository = LocalRepository();

  List<int> getVertexDegreeByIdAndNode(int id, String node) {
    final response = repository.getVertexDegreeByIdAndNode(id, node);
    return response;
  }
}