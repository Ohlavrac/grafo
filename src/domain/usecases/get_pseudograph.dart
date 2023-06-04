import '../../data/models/graph.dart';
import '../../data/repositories/local_repository.dart';
import '../repositories/repository.dart';

class GetPseudoGraph {
  late Repository repository;

  GetPseudoGraph() : repository = LocalRepository();

  List<Graph> getPseudographs() {
    final response = repository.getPseudographs();
    return response;
  }
}