" ==============================================================================
" My Standard Stuff
" ==============================================================================
set showmatch 			" Highlight Matching Braces
set ignorecase 			" Ignore Case when Searching
set mouse=a 			" Enable Mouse
set hlsearch 			" Highlight Search
set number 			" Sets numbers on LHS
set autoindent 			" Autoindent next lines
set cc=80 			" Set Color Column
set textwidth=80 		" Supposed to Wrap Lines
set wrap 			" Supposed to Wrap Lines
set wildmenu 			" Enable Auto Completion Menu After Pressing Tab
set history=200 		" Keep 200 Lines of Command Line History
syntax on 			" Syntax Highlighting
colorscheme koehler 		" Set Color Scheme
filetype plugin indent on 	" See :h filetype-indent-on and filetype-plugin-on
" ==============================================================================

" ==============================================================================
" Plugins
" ==============================================================================
const ENABLE_PLUGINS = 1

if ENABLE_PLUGINS
	" =====================================================================
	" Vim-Plug
	" =====================================================================
	call plug#begin()
		Plug 'preservim/nerdtree'
		Plug 'junegunn/fzf'
		Plug 'junegunn/fzf.vim'
		Plug 'vim-airline/vim-airline'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
	call plug#end()
	" ======================================================================

	" ======================================================================
	" NERDTree 
	" ======================================================================
	nnoremap <C-n> :NERDTreeToggle<CR>
	"autocmd VimEnter * NERDTree | wincmd p

	" Exit Vim if NERDTree is the only window remaining in the only tab
	autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
	" ======================================================================

	" ======================================================================
	" FZF
	" ======================================================================
	nnoremap <C-f> :Files<CR>
	" ======================================================================
endif
" ==============================================================================
