import 'models/graph.dart';
import 'models/node.dart';

void main() {
  Graph grafo = Graph();

  Node node1 = Node("1");
  Node node2 = Node("2");
  Node node3 = Node("3");
  Node node4 = Node("4");

  grafo.addNode(node1);
  grafo.addNode(node2);
  grafo.addNode(node3);
  grafo.addNode(node4);

  grafo.addEdge(1, node1, node2);
  grafo.addEdge(1, node1, node1);

  grafo.getEdges();
  grafo.getNodesList();
}
