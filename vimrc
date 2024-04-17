"start file type detect
"filetype on
"according file type load corresponding plugin
"filetype plugin on

set number
"自适应不同语言智能缩进
filetype indent on
"设置编辑时制表符占用空格数
set tabstop=4
"set autoindent
"将制表符扩展为空格
set expandtab
"设置格式化时制表符占用空格数
set shiftwidth=4
"让vim把连续数量的空格视为一个制表符
"set softtabstop=4
"设置缩进线
"set list lcs=tab:\|\ "(here is a space)
"set foldmethod=syntax
"set nofoldenable

"<F5>按键绑定粘贴模式 :set paste
set pastetoggle=<F12>
syntax enable
syntax on
set term=xterm
"colorscheme darkblue
"colorscheme desert
colorscheme molokai
set bg=dark
set cursorline
"highlight Cursorline   cterm=NONE ctermbg=236
highlight Cursorline   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
set cursorcolumn
"highlight Cursorcolumn cterm=NONE ctermbg=236
highlight Cursorcolumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
set laststatus=2
"set search high light
set hlsearch 
"ignore casr sensitive

"set ignorecase

set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩

"解决vim中文显示乱码问题
"set fileencoding=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"./tags;表示在文件的所在目录下查找名字为.tags的符号文件,后面一个分号代表查找不到的话向上递归到父目录，
"而我们只要在项目根目录放一个.tags即可
"set autochdir
"set tags=tags; 这两句产生的作用相同
"还需要做一个自动生成tags的插件
set tags=./.tags;,.tags

"光标回到上次退出文件时的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"define Leader as ;
let mapleader=";"

"define shortcut key to quit, write/quit, no-save/quit
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>wq :w<CR>:q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>s :shell<CR>

"copy/paste content in different files,usage:
"1. use 'yy' to select which content you want to copy
"2. use ';y' write this content to cache file
"3. use ';p' to paste the content 
let g:copy_file=$HOME . "/.vim_copybuffer"
function Write_copy_file()
call delete(g:copy_file)
let lines=split(@", "\n")
call writefile(lines,g:copy_file)
endfunction
 
function Read_copy_file()
let l:buf=readfile(g:copy_file)
let @"=join(l:buf,"\n")
normal ""p 
endfunction

map <silent> ;y :call Write_copy_file()<Enter>
map <silent> ;p :call Read_copy_file()<Enter>         

"nerdtree configuration
map <silent> nt :NERDTreeMirror<CR>
map <silent> nt :NERDTreeToggle<CR>
let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1
"autocmd VimEnter * NERDTree             "auto enable nerdtree when open file via vim

"tagbar, * 打开所有folds, = 折叠所有folds
nmap <silent> tb :TagbarToggle<CR>  
let g:tagbar_left=1             "default on right
let g:tagbar_width=30           "default width is 40
let g:tagbar_autofocus=1        "cursor on tagbar when tagbar start
let g:tagbar_sort=0             "default is sort

"switch from c file and h file
nmap <silent> <Leader>sw :FSHere<CR>

"LeaderF configuration
"let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
"display functions list in this file
noremap <c-p> :LeaderfFunction!<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'eleline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

<<<<<<< HEAD
" ALE configuration
"let g:ale_c_cc_executable = 'gcc'     " change c and c++ linter from clang to gcc
"let g:ale_c_cc_options = '-I/home/rancho/workdir/questone2av2/q2av2-pr/src/sonic-frr/frr/lib'      " manually add header files PATH

=======
>>>>>>> 15c353a9259d597176206d0e4d5e8b1d36bf6e23
"vim-plug management               "PlugInstall to install all plugins, PlugUpgrade to update all plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tomasr/molokai'
"status line for vim
Plug 'liuchengxu/eleline.vim'
"Plug 'vim-airline/vim-airline'
"switch from c file and h file
Plug 'derekwyatt/vim-fswitch'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"将asynctasks命令所在目录加入到PATH，然后在~/.bashrc alias task='asynctask -f'
Plug 'skywind3000/asynctasks.vim'
Plug 'mtdl9/vim-log-highlighting'
" linting for syntax checking and semantic error
Plug 'dense-analysis/ale'
" display vertical line on each indentation
Plug 'Yggdroot/indentLine'
call plug#end()

hi comment ctermfg=6
