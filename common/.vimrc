let mapleader = ","
set encoding=utf-8

"
" Plugins
"

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"
" Visuals
"

" Keep it nice n groovy
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

set number
set relativenumber
set tabstop=4
set shiftwidth=4

"
" LSP
"

if executable('ccls')
        au User lsp_setup call lsp#register_server({
                \ 'name': 'ccls',
        \ 'cmd': {server_info->['ccls']},
        \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
        \ 'initialization_options': {'cache': {'directory': expand('~/.cache/ccls') }},
        \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal completeopt-=preview
    setlocal keywordprg=:LspHover

    nmap <buffer> gD <plug>(lsp-declaration)
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gi <plug>(lsp-implementation)

    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> <leader>P <plug>(lsp-previous-reference)
    nmap <buffer> <leader>N <plug>(lsp-next-reference)

    nmap <buffer> <C-W>] <plug>(lsp-peek-definition)
    nmap <buffer> <C-W><C-]> <plug>(lsp-peek-definition)

    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)

    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)

    nmap <buffer> <leader>rn <plug>(lsp-rename)
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"
" Navigation
"

" Open hotkeys
map <C-p> :GFiles<CR>
nmap <leader>; :Buffers<CR>

" Navigating between panels
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-g> <C-w><C-w>

"
" Misc
"

" Disable that tags stuff
map <C-]> <Nop>

" Quick save
nmap <leader>w :w<CR>

map 0 ^

" I can type :help on my own, thanks.
map <F1> <Esc>
imap <F1> <Esc>
