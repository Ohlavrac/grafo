import 'edge.dart';

class Node {
  final String label;
  final List<Edge> inputEdges = [];
  final List<Edge> outputEdges = [];

  Node(this.label);

  String get getnode => this.label;

  void addInputEdge(Edge edge) {
    this.inputEdges.add(edge);
  }

  void addOutputEdge(Edge edge) {
    this.outputEdges.add(edge);
  }

}