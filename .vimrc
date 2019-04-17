" --- автоматическая загрузка плагинов из директории ~/.vim/bundle
execute pathogen#infect()

" --- подсвечиваем синтаксис
syntax on

" --- ?
filetype plugin indent on

" --- задаем отступы для разных типов файлов
"     et - преобразование табуляций в пробелы
"     noet - не преобразовывать табуляции в пробелы
autocmd FileType solidity setlocal ts=4 sts=4 sw=4 et
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 et
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
autocmd FileType eruby setlocal ts=2 sts=2 sw=2 et
autocmd FileType eruby.yaml setlocal ts=2 sts=2 sw=2 et
autocmd FileType sh setlocal ts=2 sts=2 sw=2 et
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et
autocmd FileType go setlocal ts=4 sts=4 sw=4
autocmd FileType vue setlocal ts=2 sts=2 sw=2 et

" --- подсвечиваем текущую строку
set cursorline

" --- отображаем номера строк
set number

" --- подсвечиваем крайнюю колонку
set colorcolumn=70

" --- Ctrl-j/k вставляет пустые строки под/над курсором
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" --- Alt-j/k удаляет пустые строки под/над курсором
"     (для включения обработки клавиши Alt надо поплясать с бубном)
" nnoremap <silent><A-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><A-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
"

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
" nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" --- отображение файлов директории по F2
map <F2> :ls<CR>

" === Переопределение клавиш в режиме Insert
" --- Ctrl-o вставка пустой строки выше и переход на нее 
imap <C-o> <Esc>O
" --- Ctrl-l вставка пустой строки ниже и переход на нее
imap <C-l> <Esc>o

" --- отображение непечатных символов (пробелов, табов и прочее)
"     (отключение режима отображения :set nolist
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.

" --- цветовая схема RailsCasts
"     см. https://github.com/jpo/vim-railscasts-theme
colorscheme railscasts

" --- отключение стандартной разметки Markdown
"     см. https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1

" --- определение псевдонимов для стандартных команд
command WQ wq
command Wq wq
command W w
command Q q

" --- устанавливаем режим сворачивания                                
"     для 'несворачивания' по-умолчанию - устанавливаем уровень       
set foldmethod=indent                                                 
set foldlevel=20

" --- переменная для vim-compiler-go
let g:golang_goroot = "/usr/lib/go-1.10"

let g:rails_projections = {
      \ "config/projections.json": {
      \   "command": "projections"
      \ }
      \ }}  

" --- изменение комментария по умполчанию для yml-файлов в rails-проектах
autocmd FileType eruby.yaml setlocal commentstring=#\ %s

" --- управление отступом через Tab в нормальном и визуальных режимах
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

hi Normal guibg=NONE ctermbg=NONE
