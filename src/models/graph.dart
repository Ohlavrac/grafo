import 'edge.dart';
import 'node.dart';

class Graph {
  late List<Node> nodes;
  late List<Edge> edges;

  Graph() {
    this.edges = [];
    this.nodes = [];
  }

  void addNode(Node node) {
    this.nodes.add(node);
  }

  void getEdges() {
    int index = 0;
    for (index; index < this.edges.length; index++) {
      if (this.edges[index].startNode.label == this.edges[index].endNode.label) {
        print("$index = {${this.edges[index].startNode.label}, ${this.edges[index].endNode.label}} LOOP");
      } else {
        print("$index = {${this.edges[index].startNode.label}, ${this.edges[index].endNode.label}}");
      }
    }
  }

  void getNodesList() {
    int index = 0;
    List temp = [];
    for (index; index < this.nodes.length; index++) {
      temp.add(this.nodes[index].getnode);
    }
    print("Vertices: $temp");
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
    int index = 0;
    for (index; index < this.nodes.length; index++) {
      if (this.nodes[index].label == node.label) {
        localnode = this.nodes[index];
        return localnode;
      }
    }
    return localnode;
  }
}