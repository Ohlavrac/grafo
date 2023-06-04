import '../models/graph.dart';

abstract class LocalDatasource {
  List<Graph> getGraphs();
  Graph getGraphById(int id);
  List<Graph> getMultiGraphs();
  List<Graph> getPseudographs();
}