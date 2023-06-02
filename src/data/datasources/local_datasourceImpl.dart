import '../../core/graphs_json.dart';
import '../models/graph.dart';
import 'local_datasource.dart';

class LocalDatasourceImpl implements LocalDatasource {
  @override
  List<Graph> getGraphs() {
    return graphs;
  }
}