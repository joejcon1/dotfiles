colorscheme desert
set number
syntax on
set autoindent

set autowrite
set tabstop=2
set expandtab
set shiftwidth=2
set wildmode=longest,list
set wildignorecase
set wildmenu
set termguicolors

let mapleader = ","

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 15
let g:netrw_preview = 1

function! OpenExplorerOnRight()
  let l:original_win_id = win_getid()
  Vexplore
  call win_gotoid(l:original_win_id)
endfunction


augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * call OpenExplorerOnRight()
augroup END

nmap <Tab> <C-W>w
nmap <Bar> <C-W>v<C-W><Right>
nmap -     <C-W>s<C-W><Down>
nmap <S-Tab> :bnext<CR>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nnoremap q: :q

set statusline+=%#warningmsg#
set statusline+=%*


augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

augroup CursorLineHighlightInMode
  autocmd InsertEnter * highlight CursorLine gui=underline cterm=underline ctermfg=red guifg=blue
  autocmd WinEnter,InsertLeave * highlight CursorLine gui=underline cterm=underline ctermfg=None
augroup END

hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none

" Sets the background and foreground colors for unselected tabs
highlight TabLine ctermfg=Gray ctermbg=DarkBlue gui=underline guifg=gray guibg=darkblue

" Sets the background and foreground colors for the selected tab
highlight TabLineSel ctermfg=Black ctermbg=LightBlue gui=bold guifg=white guibg=lightblue

" Sets the background for the tabline where no tabs exist
highlight TabLineFill ctermfg=Black ctermbg=Grey guibg=green

if filereadable(expand('~/.config/nvim/plugins.lua'))
  execute 'luafile ~/.config/nvim/plugins.lua'
endif
