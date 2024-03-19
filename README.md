# vim_cfg
This is my shell and vim environment configuration files,include files of vimrc and bashrc，Run the cmd of git clone and replace to ~/.vimrc，include a plug management tool plug.vim，and mokolai color mode file！
autoload_cscope.vim can auto load cscope.

Use manual：
1. cp vimrc ~/.vimrc
2. mkdir ~/.vim; cp -r autoload/ ~/.vim; cp -r colors/ ~/.vim; cp -r plugin ~/.vim
3. vim ~/.vimrc   :PlugInstall
4. cp bashrc ~/.bashrc       # please noter: source ~/.bashrc
5. For install plugin, open any files and execute ":PlugInstall"

Or direct run auto_shell.sh
