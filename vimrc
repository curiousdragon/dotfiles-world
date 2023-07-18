" .vimrc file
" to configure vim
filetype off
filetype plugin indent off


" to use vim-plug, the plugin manager ========================================
call plug#begin('~/.vim/plugged')

" color scheme, gruvbox plugin
Plug 'morhetz/gruvbox'

" vim whitespace, better whitespace plugin
Plug 'ntpeters/vim-better-whitespace'

" vim configs, sensible plugin
Plug 'tpope/vim-sensible'

" visualize vim undos, undo tree plugin
Plug 'mbbill/undotree'

" git wrapper, fugitive.vim plugin
Plug 'tpope/vim-fugitive'

" vim status line, airline plugin
Plug 'vim-airline/vim-airline'

" battery display for status line, battery.vim plugin
Plug 'lambdalisue/battery.vim'

" code completion engine, you complete me plugin
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

" snippets, ultisnips plugin
Plug 'sirver/ultisnips'

" tabs, supertab plugin
Plug 'ervandew/supertab'

" LaTeX, vimtex plugin
Plug 'lervag/vimtex'

" Rust plugin
Plug 'rust-lang/rust.vim'

" all Plug plugins before this line
call plug#end()
" config that's not a plugin comes after Plug ================================


" source other configs =======================================================

" runtime defaults
" source $VIMRUNTIME/defaults.vim

" get core vimrc configs
source $HOME/.dotfiles/vimrc-core

" source other configs =======================================================


" autocommands ===============================================================

" only load autocommands if they have not already been loaded
if !exists("autocommands_loaded")
    " prevent autocommands from being duplicated
    let autocommands_loaded = 1

    " autocommands
    augroup AutoEndScroll
        autocmd CursorMoved,CursorMovedI * call AutoEndScrollFn()
    augroup end

    function AutoEndScrollFn() abort
        while winheight(0) > &scrolloff &&
                    \ winline() > winheight(0) - &scrolloff
            execute "normal!\<C-E>"
        endwhile
    endfunction
endif

" autocommands ===============================================================


" colorscheme ================================================================

set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" background transparency in terminal vim
hi Normal ctermbg=NONE guibg=NONE
set cursorline

" colorscheme ================================================================


" plugin configs =============================================================

" better whitespace
let g:better_whitespace_enabled=0
" strip whitespace on saving files automatically
let g:strip_whitespace_on_save=1
" disable check for confirmation on saving
let g:strip_whitespace_confirm=0

" vim battery
let g:battery#update_statusline=1

" vim airline
let g:airline_section_a=airline#section#create(['mode'])
let g:airline_section_b=airline#section#create(['%t%m'])
let g:airline_section_c=''
let g:airline_section_x=airline#section#create('%{battery#component()}')
" FugitiveStatusLine() gives: "Git(branch)"
" the following sets section y to be: "[branch]"
let g:airline_section_y
            \=airline#section#create('[%{FugitiveStatusline()[5:-3]}]')
let g:airline_section_z=airline#section#create(['%l,%c'])

" markdown: code block syntax highlighting
let g:markdown_fenced_languages=['python','bash=sh', 'tex']

" undo tree
nnoremap <leader>u :UndotreeToggle<CR>

" VimTex + Skim + MacVim setup
let g:vimtex_view_method="skim"
let g:vimtex_view_general_viewer
        \='/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options='-r @line @pdf @tex'
let g:vimtex_view_skim_sync=1
set conceallevel=1
let g:tex_conceal='abdmg'

" make YCM work with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType='<C-n>'
" let g:ycm_autoclose_preview_window_after_completion=1
" nmap <leader>d <plug>(YCMHover)

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/UltiSnips", "UltiSnips"]

" plugin configs =============================================================


" tab sizes for specific languages ===========================================

" for tabs 2 spaces for .js
autocmd FileType javascript setlocal sw=2 sts=2

" for tabs 4 spaces for .java
autocmd FileType java setlocal sw=4 sts=4

" for tabs 4 spaces for .c
autocmd FileType c setlocal sw=4 sts=4

" for tabs 2 spaces for .tex
autocmd FileType tex setlocal sw=2 sts=2

" for tabs 4 spaces for .md
autocmd FileType md setlocal sw=4 sts=4

" for tabs 2 spaces for .scm
autocmd FileType scheme setlocal sw=2 sts=2

" for tabs 2 spaces for .css
autocmd FileType css setlocal sw=2 sts=2

" for tabs 2 spaces for .html
autocmd FileType html setlocal sw=2 sts=2

" for tabs 2 spaces for .sql
autocmd FileType sql setlocal sw=2 sts=2

" tab sizes for specific languages ===========================================
