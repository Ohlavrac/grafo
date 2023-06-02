class Edge {
  late List<List<String>> edges;

  Edge();

  Edge.fromJson(Map<String, dynamic> json) {
    this.edges = json["edges"];
  }
}