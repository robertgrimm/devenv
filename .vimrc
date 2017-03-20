call plug#begin()
  Plug 'altercation/vim-colors-solarized'
  Plug 'fatih/vim-go'
  Plug 'vim-ruby/vim-ruby'
call plug#end()

set nocompatible

" Use custom autoindent settings per language
filetype indent off
set noautoindent
" Backspace over everything in Insert mode
set backspace=2
set nobackup
set hlsearch
set number
set title

set background=dark
colorscheme solarized

" Don't auto-comment
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}\%Y]\ [POS:%l,%v][%p%%]\ [LEN:%L]

set wildignore+=*/tmp/*,.*,public/assets/*,Gemfile.lock,pkg

map <C-O> :!p4 edit %<Esc>:set noreadonly<Esc>
" map <C-T> :set noexpandtab<Esc>:set tabstop=8<Esc>:set sw=8<Esc>

if exists('+colorcolumn')
  set colorcolumn=81
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%81v.\+', -1)
endif

" Filetype specific stuff
autocmd BufNewFile,BufRead *.{c,h,cc} :call FreeBSD_Style()
autocmd BufNewFile,BufRead {Gemfile,*.ru} setfiletype ruby
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType rc setlocal expandtab shiftwidth=2 tabstop=2


set tags=./tags,tags;/
nmap <F8> :TagbarToggle<CR>

" add default cscope database
if has("cscope")
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  " else add database pointed to by environment
  elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB 
  endif
  set csverb 
  nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  map <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  map <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  map <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  map <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  map <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  map <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  map <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
