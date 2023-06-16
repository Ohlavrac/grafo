dir=$(pwd)

helpcommand="dart $dir/commands_code/help_commands.dart"
showallgraphscommand="dart $dir/commands_code/show_all_graphs.dart"

echo alias ajudagrafos="'$helpcommand'" >> ~/.bashrc
echo alias mostrargrafos="'$showallgraphscommand'" >> ~/.bashrc

. ~/.bashrc