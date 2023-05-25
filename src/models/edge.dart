import 'node.dart';

class Edge {
  final double weight;
  final Node startNode;
  final Node endNode;

  Edge(this.startNode, this.endNode, this.weight);

  void get getStartNode => this.startNode;
  void get getEndNode => this.endNode;
  void get getWeight => this.weight;
}