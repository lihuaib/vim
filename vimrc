""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" " git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

" vundle to manager plugin tree
filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manager Vundle
" required
Bundle 'gmarik/vundle'

" Bundle 'fcitx.vim'
" html 写代码用的
Bundle 'Emmet.vim' 
Bundle 'The-NERD-tree'
    "设置相对行号
    nmap <F9> :NERDTreeToggle<cr>
    let NERDTreeShowBookmarks=1
    let NERDTreeShowFiles=1
    let NERDTreeShowHidden=1
    let NERDTreeIgnore=['\.$','\~$']
    let NERDTreeShowLineNumbers=1
    let NERDTreeWinPos=0
    nmap <C-b> :Bookmark<cr>

" Bundle 'Lokaltog/vim-powerline' " 底部状态栏
" 底部状态栏
Bundle 'bling/vim-airline' 
" Bundle 'Markdown'
Bundle 'gmarik/vim-markdown'
Bundle 'DrawIt'
Bundle 'taglist.vim'
    " 在查看代码时， 对整个目录进行 ctags -R *
    " 配置Taglist 打开vim 输入TlistToggle 即可
    let Tlist_Show_One_File=1  
    let Tlist_Exit_OnlyWindow=1  
    let Tlist_Use_Right_Window=1
    nmap <F10> :TlistToggle<cr>

Bundle 'SuperTab'

Bundle 'minibufexpl.vim'
    "let g:miniBufExplorerMoreThanOne=0
    let g:miniBufExplMapWindowNavVim=1 "多窗口下ctrl加j/k/l/h/切换窗口
    "切换到下一个Buf
    nmap <C-n> :bn<cr>
    "切换到下一个Buf
    nmap <C-p> :bp<cr>
    " d 删除光标所在的buffer
    " :bn 打开当前buffer的下一个buffer
    " :bp 打开当前buffer的前一个buffer
    " :b"num"
    " 打开指定的buffer，"num"指的是buffer开始的那个数字，比如上图，我想打开list_audit.erb，输入:b7就ok了

Bundle 'grep.vim'
    " :Grep          - Search for the specified pattern in the specified files 
    " :Rgrep         - Run recursive grep 
    " 查找
    nmap <C-f> :Rgrep<cr> 

"Bundle 'trammell/vim-conque'

"语法检测工具
Bundle 'scrooloose/syntastic'     
  let g:syntastic_check_on_open = 1
  let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" 启动文件类型插件
filetype plugin indent on 


"""""""""""""""""""""""""""""""""""""""""""""""""
" :help statusline
set nocompatible " be iMproved

set nocp
set nu
set showmatch
set ruler
set nobackup
set cursorline " 突出显示当前行 
set incsearch " 输入搜索内容时就显示搜索结果 

set ignorecase
set smartcase

" 自动缩进 
" set smartindent 
" set shiftwidth=4
" set autoindent 
" set cindent 

set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)

set foldenable " 开始折叠
set foldmethod=manual " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为

set sw=4 " 自动缩进的时候，缩进尺寸为 4 个空格。 
set ts=4 " Tab 宽度为 4 个字符
set et " 编辑时将所有 Tab 替换为空格。 该选项只在编辑时将 Tab 替换为空格，如果打开一个已经存在的文件，并不会将已有的 Tab 替换为空格。如果希望进行这样的替换的话，可以使用这条命令“:retab”。 
set smarttab " 当使用 et 将 Tab 替换为空格之后，按下一个 Tab 键就能插入 4 个空格，但要想删除这 4 个空格，就得按 4 下 Backspace，很不方便。设置 smarttab 之后，就可以只按一下 Backspace 就删除 4 个空格了。 

set hls 
syntax enable 

set t_Co=256
let g:solarized_termcolors=256
let g:molokai_original=1
let g:rehash256=1
set background=dark
" set background=light
colorscheme molokai 

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 " 如果你要打开的文件编码不在此列，那就添加进去
set termencoding=utf-8

" 不要自动添加新的注释行
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
