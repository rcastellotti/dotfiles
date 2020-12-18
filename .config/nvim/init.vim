" automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" normal lines navigation with lines wrapping
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" switch between tabs
nnoremap <C-Left> :tabprevious<CR>                                         
nnoremap <C-Right> :tabnext<CR>

" better way to switch between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

syntax on
set number
set noshowmode
set mouse=a
set autoindent  
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set wildoptions-=pum
map <Space> <Leader>
noremap <Leader>y "+y

" exit with Esc from terminal mode
tnoremap <Esc> <C-\><C-n>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w -S !sudo tee > /dev/null %

" automatically close brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

let g:netrw_banner = 0
let g:netrw_winsize = 15
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction
noremap <silent> <C-b> :call ToggleNetrw()<CR>
augroup TerminalStuff
   au! 
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

colorscheme codedark
