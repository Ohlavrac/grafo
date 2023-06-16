class TerminalMenu {
  TerminalMenu();

  void drawnMenu() {
    //return "[1]    Lista de Grafos\n[2]    Multigrafos\n[3]    Pseudografos\n[4]    Desconexos\n[5]    Completos\n[6]    Graus ID=1\n[7]    Grau ID=1 Vertice=A\n[8]    Alcancaveis apartir de A\n[9]    Inalcancaveis apartir de A\n[10]   BFS\n[11]   DFS\n[ 0]    Sair\n";
    print("[1]    Lista de Grafos");
    print("[2]    Multigrafos");
    print("[3]    Pseudografos");
    print("[4]    Desconexos");
    print("[5]    Completos");
    print("[6]    Graus ID=1");
    print("[7]    Grau ID=1 Vertice=A");
    print("[8]    Alcancaveis apartir de A");
    print("[9]    Inalcancaveis apartir de A");
    print("[10]   BFS");
    print("[11]   DFS");
    print("[ 0]    Sair");
  }

  void drawnHelp() {
    print("EXEMPLO DE COMANDOS");
    print(">mostrargrafos= Como o nome diz esse comando mostra todos os grafos carregados");
    print(">mostrarmultigrafos = Esse comando mostra os multigrafos da lista de grafos");
    print(">mostrarpseudografos = Esse comando mostra todos os pseudografos da lista de grafos");
    print(">mostrargrafosdesconexos = Esse comando mostra todos os grafos desconexos da listra de grafos");
    print(">mostrargrafoscompletos = Esse comando mostra todos os grafos complexto da lista de grafos");
    print(">grausdosvertices = Esse comando é usado para mostrar o grau de todos os vertices de um grafo informado");
    print(">graudeumvertice = Esse comando é usado para mostrar o grau de um vertice de um grafo informado");
  }
}