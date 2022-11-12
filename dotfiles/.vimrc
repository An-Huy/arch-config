:set number
:set autoindent
:set tabstop=4
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
	
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'	 
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'scrooloose/syntastic'
	Plug 'tpope/vim-surround'
	Plug 'ryanoasis/vim-devicons'
	set encoding=UTF-8

call plug#end()

syntax enable
colorscheme dracula

" NERDTree configuration
nnoremap <leader>n :NERDTreeFocus<CR>															
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-q> :NERDTreeClose<CR>

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif 

" LightLine Configuration
nnoremap <leader>n :NERDTreeFocus<CR>															
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }

" Coc.nvim configuration
" Coc.nvim configuration
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()	

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<Tab>\<CR>"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
