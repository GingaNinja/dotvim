set nocompatible
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype plugin indent on
let g:OmniSharp_timeout = 1
set noshowmatch

autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

set completeopt=longest,menuone,preview

set splitbelow

autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuildAsync<cr>

autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
nnoremap <leader>fi :OmniSharpFindImplementations<cr>
nnoremap <leader>ft :OmniSharpFindType<cr>
nnoremap <leader>fs :OmniSharpFindSymbol<cr>
nnoremap <leader>fu :OmniSharpFindUsages<cr>
nnoremap <leader>fm :OmniSharpFindMembersInBuffer<cr>

set ts=2
set expandtab
set bs=2
set shiftwidth=2

