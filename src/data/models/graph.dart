import 'edge.dart';
import 'node.dart';

class Graph {
  late int id;
  late List<String> nodes;
  late List<Edge> edges;

  Graph() {
    this.id;
    this.edges = [];
    this.nodes = [];
  }

  Graph.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    if (json["vertices"] != null) {
      this.nodes = json["vertices"];
    }
    if (json["edges"] != null) {
      this.edges = <Edge>[];
      json["edges"].forEach((v) {
        this.edges.add(Edge.fromJson(json));
      });
    }
  }
}