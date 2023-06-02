import 'domain/usecases/get_graphs.dart';
import 'dart:io';

void main() {
  final GetGraphs getGraphs = GetGraphs();
  final graphs = getGraphs.getGraphs();
  String? option;

  while (true) {
    print("[1] Lista de Grafos");
    print("[0] Sair");
    option = stdin.readLineSync();
    
    if (option == "0") {
      break;
    } else if (option == "1") {
      print("OPA");
    } else {
      print("ERRO");
    }
  }
}
