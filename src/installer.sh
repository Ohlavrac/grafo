dir=$(pwd)

helpcommand="dart $dir/commands_code/help_commands.dart"
showallgraphscommand="dart $dir/commands_code/show_all_graphs.dart"
showmultigraphs="dart $dir/commands_code/show_multigraphs.dart"
showpseudographs="dart $dir/commands_code/show_pseudographs.dart"
reachablegraphs="dart $dir/commands_code/reachable_vertex.dart"
unreachablegraphs="dart $dir/commands_code/unreachable_vertex.dart"
verticedegreebyid="dart $dir/commands_code/vertice_degree_by_id.dart"
verticedegreebyiaandnode="dart $dir/commands_code/vertice_degree_by_id_node.dart"
showcompletegraphs="dart $dir/commands_code/show_complete_graphs.dart"

echo alias grafosajuda="'$helpcommand'" >> ~/.bashrc
echo alias grafostodos="'$showallgraphscommand'" >> ~/.bashrc
echo alias grafosmultigrafos="'$showmultigraphs'" >> ~/.bashrc
echo alias grafospseudografos="'$showpseudographs'" >> ~/.bashrc
echo alias grafosverticesalcancaveis="'$reachablegraphs'" >> ~/.bashrc
echo alias grafosverticesinalcancaveis="'$unreachablegraphs'" >> ~/.bashrc
echo alias grafosgraus="'$verticedegreebyid'" >> ~/.bashrc
echo alias grafosgrauvertice"'$verticedegreebyiaandnode'" >> ~/.bashrc
echo alias grafoscompletos"'$showcompletegraphs'" >> ~/.bashrc

. ~/.bashrc