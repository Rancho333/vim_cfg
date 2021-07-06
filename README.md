# vim_cfg
这是我的vim配置信息及shell环境,里面包含一个vimrc文件和bashrc，git clone之后替换到~/.vimrc，包含一个plug.vim的插件管理工具，以及mokolai的色彩模式文件！
autoload_cscope.vim可以自动配置加载cscope

使用方法：
1. cp vimrc ~/.vimrc
2. mkdir ~/.vim; cp -r autoload/ ~/.vim; cp -r colors/ ~/.vim; cp -r plugin ~/.vim
3. vim ~/.vimrc   :PlugInstall
4. cp bashrc ~/.bashrc
