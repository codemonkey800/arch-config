" This file extends the base keymap settings and adds vim or nvim specific
" keybindings.

source ~/.config/nvim/settings/keymap.vim

" Escape nvim terminal
tnoremap jk <C-\><C-n>

" Open file explorer
noremap <leader>f :Vexplore<CR>
noremap <leader>F :Hexplore<CR>

" Runs make
noremap <leader>b :!make<CR>
" Runs make clean
noremap <leader>B :!make clean<CR>

" Shortcuts for buffer related stuff
nnoremap <leader>m :bn<CR>
nnoremap <leader>n :bp<CR>
nnoremap <leader>w :bd!<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>t :new<CR>

" Shortcuts to for tab related stuff
nnoremap <leader>M :tabn<CR>
nnoremap <leader>N :tabp<CR>
nnoremap <leader>W :tabc<CR>
nnoremap <leader>L :tabs<CR>
nnoremap <leader>T :tabnew<CR>

nnoremap <C-p> :FZF<CR>

nnoremap <F8> <nop>
nnoremap <F8> :TagbarToggle<CR>

nnoremap <F9> :call NextColor(1)<CR>
nnoremap <S-F9> :call NextColor(-1)<CR>
nnoremap <A-F9> :call NextColor(0)<CR>
