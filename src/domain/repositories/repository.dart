import '../../data/datasources/local_datasource.dart';
import '../../data/models/graph.dart';

abstract class Repository {
  late LocalDatasource local;

  Repository({required this.local});

  List<Graph> getGraphs();
}