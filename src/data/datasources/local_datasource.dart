import '../models/graph.dart';

abstract class LocalDatasource {
  List<Graph> getGraphs();
}