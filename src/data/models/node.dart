class Node {
  late List<String> label;

  Node();

  Node.fromJson(Map<String, dynamic> json) {
    this.label = json["vertice"];
  }
}