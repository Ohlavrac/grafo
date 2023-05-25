import 'edge.dart';
import 'node.dart';

class Graph {
  late List nodes;
  late List edges;

  Graph() {
    this.edges = [];
    this.nodes = [];
  }

  void addNode(Node node) {
    this.nodes.add(node);
  }

  void addEdge (double weight, Node node, Node node2) {
    Node? startNode = this.getNodes(node);
    Node? endNode = this.getNodes(node2);

    Edge edge = Edge(startNode!, endNode!, weight);

    startNode.addInputEdge(edge);
    endNode.addOutputEdge(edge);

    this.edges.add(edge);
  }

  Node? getNodes(Node node) {
    late Node localnode;
    for (int index = 0; index < this.nodes.length; index++) {
      if (this.edges[index].getnode() == node.label) {
        localnode = this.nodes[index];
        return localnode;
      }
    }
    return localnode;
  }
}