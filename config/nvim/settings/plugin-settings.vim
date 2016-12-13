"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources = {}
let g:deoplete#keyword_patterns = {}

" tmux-complete
let g:tmuxcomplete#trigger = ''

" deoplete-github
let g:deoplete#sources.gitcommit = ['github']
let g:deoplete#keyword_patterns.gitcommit = '.+'
let g:deoplete#omni#input_patterns = {}
call deoplete#util#set_pattern(
    \ g:deoplete#omni#input_patterns,
    \ 'gitcommit',
    \ [g:deoplete#keyword_patterns.gitcommit])

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" clang_complete
let g:clang_library_path = '/usr/lib/libclang.so'
let g:clang_snippets = 1
let g:clang_snippets_engine = 'clang_complete'

" deoplete-flow
function! TrimNewline(str)
    return substitute(a:str, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let s:flow_path = ''
if executable('flow')
    let s:flow_path = TrimNewline(system('which flow'))
else
    let s:cmd = ''
    if executable('yarn')
        let s:cmd = 'yarn'
    elseif executable('npm')
        let s:cmd = 'npm'
    endif

    if s:cmd != ''
        let s:flow_path = resolve(
                    \ TrimNewline(system(s:cmd . ' bin'))
                    \ . '/flow')
        if !executable(s:flow_path)
            let s:flow_path = ''
        endif
    endif
end

let g:deoplete#sources#flow#flow_bin = s:flow_path

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Neomake
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
let g:neomake_highlight_lines = 1

autocmd! BufWritePost * Neomake

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement/Text Manipulation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prose
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-lexical
augroup lexical
    autocmd!
    autocmd FileType markdown,mkd call lexical#init()
    autocmd FileType textile call lexical#init()
    autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

let g:lexical#thesaurus = ['~/.config/nvim/mthesaur.txt']
let g:lexical#dictionary = ['/usr/share/dict/american-english']

let g:lexical#spell_key = '<leader>t'
let g:lexical#thesaurus_key = '<leader>T'
let g:lexical#dictionary_key = '<leader>k'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntaxes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-json
let g:vim_json_syntax_conceal = 0

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_new_list_item_indent = 2

" vim-jsx
let g:jsx_ext_required = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1

" onedark.vim
let g:onedark_terminal_italics = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilitiy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" echodoc
set noshowmode
let g:echodoc_enable_at_startup = 1

" fakeclip
let g:vim_fakeclip_tmux_plus = 1

" fzf.vim
let g:fzf_action = {
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'}
let g:fzf_layout = { 'down': '~30%' }

" Neoterm
let g:neoterm_shell = "fish"

" tmux-navigator
let g:tmux_navigator_no_mappings = 1

" vim-editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" undotree
let g:undotree_WindowLayout = 1
let g:undotree_SplitWidth = 50
let g:undotree_DiffpanelHeight = 20

