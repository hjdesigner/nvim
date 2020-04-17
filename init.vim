call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'moll/vim-node'
Plug 'ap/vim-css-color'
Plug 'stephenway/postcss.vim'
Plug 'geekjuice/vim-mocha'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
call plug#end()

colorscheme dracula
set background=dark

if has('nvim')
    let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
    let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
    let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
    let g:UltiSnipsRemoveSelectModeMappings = 0
    inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>
    inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<c-j>"
    inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<c-k>"
    xmap <c-u> <Plug>(ultisnips_expand)
    smap <c-u> <Plug>(ultisnips_expand)
endif

if has('mouse')
	set mouse=a
endif

set number
set inccommand=split
set tabstop=2
set shiftwidth=2
set mouse=a
set expandtab

let g:user_emmet_leader_key=','
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
	\      'extends' : 'jsx',
  \  },
\}
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
