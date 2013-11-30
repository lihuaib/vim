call pathogen#infect()
" call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype off
syntax on
filetype plugin indent on

"set nocp

set nu
set showmatch
set ruler
set nobackup
set cursorline " 突出显示当前行 
set incsearch " 输入搜索内容时就显示搜索结果 

" 自动缩进 
set smartindent 
set shiftwidth=4
set autoindent 
set cindent 

" 启动文件类型插件
filetype on 
filetype plugin on 
filetype indent on

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

filetype on

set t_Co=256
let g:solarized_termcolors=256
" colorscheme murphy 
" colorscheme torte 
" colorscheme evening
set background=dark
colorscheme solarized
