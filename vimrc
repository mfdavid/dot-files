" Inicializando o Pathogen. Utilizado para facilitar a gestão de plugins.
execute pathogen#infect()
syntax on

" Usar por padrão o clipboard para copia de texto.
if has("clipboard")
  set clipboard=unnamed

  if has("unnamedplus") " Suporte ao X11. 
    set clipboard+=unnamedplus
  endif
endif

" Desabilitando criação de arquivos de swap.
set noswapfile

" Identação de código.
filetype plugin indent on

" Painel lateral à esquerda.
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Plugin de busca (ctr + p).
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'  

" Exibir número da linha corrente e número de linhas relativas.
set number
set relativenumber

" Tabs e indentação.
set autoindent
set smartindent
set shiftwidth=2
set expandtab
set tabstop=2

" F10 para habilitar ou desabilitar modo paste.
set pastetoggle=<F10> 

" Configurando Java (plugin ~/.vim/bundle/javacomplete2).
autocmd filetype java setlocal omnifunc=javacomplete#complete
nmap <f4> <plug>(javacomplete-imports-addsmart)
imap <f4> <plug>(javacomplete-imports-addsmart)
nmap <f5> <plug>(javacomplete-imports-add)
imap <f5> <plug>(javacomplete-imports-add)
nmap <f6> <plug>(javacomplete-imports-addmissing)
imap <f6> <plug>(javacomplete-imports-addmissing)
nmap <f7> <plug>(javacomplete-imports-removeunused)
imap <f7> <plug>(javacomplete-imports-removeunused)
