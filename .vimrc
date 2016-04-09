"===========================================
"               Appearance                  
"===========================================

syntax on                   " 自动语法高亮

set number                  " 显示行号

set cursorline              " 突出显示当前行

set ruler                   " 打开状态栏标尺

set tabstop=4               " 设定 tab 长度为 4

set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感

set incsearch               " 输入搜索内容时就显示搜索结果

set hlsearch                " 搜索时高亮显示被找到的文本

set guioptions-=T           " 隐藏工具栏

set guioptions-=m           " 隐藏菜单栏

set smartindent             " 开启新行时使用智能自动缩进

set backspace=indent,eol,start

                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符

set cmdheight=1             " 设定命令行的行数为 1

set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} "状态行显示的内容 

set foldenable              " 开始折叠

set foldmethod=syntax       " 设置语法折叠

set foldcolumn=0            " 设置折叠区域的宽度

setlocal foldlevel=1        " 设置折叠层数为

 nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

                            " 用空格键来开关折叠

"inoremap { {<CR><CR>}<ESC>kA	
"inoremap { {}<ESC>i
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i

