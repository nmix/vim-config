" --- автоматическая загрузка плагинов из директории ~/.vim/bundle
execute pathogen#infect()
" --- подсвечиваем синтаксис
syntax on
" --- ?
filetype plugin indent on

" --- разрешаем локальные .vimrc
set exrc

" --- подсвечиваем текущую строку
set cursorline

" --- отображаем номера строк в 'гибридном стиле'
" see https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" --- подсвечиваем крайнюю колонку
set colorcolumn=70

" --- отображение непечатных символов (пробелов, табов и прочее)
"     (отключение режима отображения :set nolist
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:.

" --- вкл/выкл режима <вклейки> по F2
set pastetoggle=<F2>

" --- включаем автоматическое добавления комментария для новой строки
set formatoptions+=r

" --- используем системный буфер обмена по умолчанию
set clipboard=unnamedplus

" --- копируем имя файла в буфер обмена
"     @see https://vim.fandom.com/wiki/Copy_filename_to_clipboard
nmap ,cs :let @+=expand("%")<CR>
nmap ,cl :let @+=expand("%:p")<CR>

" --- Переопределение клавиш в режиме Insert
" Ctrl-o вставка пустой строки выше и переход на нее 
imap <C-o> <Esc>O
" --- Ctrl-l вставка пустой строки ниже и переход на нее
imap <C-l> <Esc>o

" --- определение псевдонимов для стандартных команд
command WQ wq
command Wq wq
command W w
command Q q

" --- устанавливаем режим сворачивания                                
"     для 'несворачивания' по-умолчанию - устанавливаем уровень       
set foldmethod=indent                                                 
set foldlevel=20

" --- Ctrl-j/k вставляет пустые строки под/над курсором
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" --- управление отступом через Tab в нормальном и визуальных режимах
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

hi Normal guibg=NONE ctermbg=NONE

" ===================================================================
" --- Common Section
" ===================================================================

autocmd FileType sh setlocal ts=2 sts=2 sw=2 et
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 et
autocmd FileType xml setlocal ts=4 sts=4 sw=4 noet
autocmd FileType dockerfile setlocal ts=4 sts=4 sw=4 et

au BufRead,BufNewFile Vagrantfile.* setfiletype ruby
au BufRead,BufNewFile *.conf setfiletype conf

" --- скрываем файлы в explorer
let g:netrw_list_hide= '.*\.swp$,\~$,\.orig$'

" ===================================================================
" --- Syntastic
" ===================================================================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ===================================================================
" --- FZF
" ===================================================================

" sudo apt-get install fzf
" cd ~/.vim-config/.vim/bundle
" git clone https://github.com/junegunn/fzf
nnoremap <C-p> :<C-u>FZF<CR>

" ===================================================================
" --- UltiSnips
" ===================================================================

let g:UltiSnipsExpandTrigger="<c-w>"
let g:UltiSnipsJumpForwardTrigger="<c-a>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ===================================================================
" --- Markdown
" ===================================================================

" --- включаем подсветку синтаксиса в блоках
let g:markdown_fenced_languages = ['html', 'python', 'ruby', 'vim', 'bash']
" --- отключаем авто-скрытие границ блока
let g:markdown_syntax_conceal = 0


" ===================================================================
" --- Ruby on Rails Section
" ===================================================================

autocmd FileType javascript setlocal ts=4 sts=4 sw=4 et
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 et
autocmd FileType eruby setlocal ts=2 sts=2 sw=2 et
autocmd FileType eruby.yaml setlocal ts=2 sts=2 sw=2 et
autocmd FileType vue setlocal ts=2 sts=2 sw=2 et
autocmd FileType scss setlocal ts=2 sts=2 sw=2 et
autocmd FileType conf setlocal ts=2 sts=2 sw=2 et

" --- изменение комментария по умполчанию для yml-файлов в rails-проектах
autocmd FileType eruby.yaml setlocal commentstring=#\ %s

let g:rails_projections = {
      \ "app/queries/*.rb": {
      \   "command": "query",
      \ },
      \ "app/activeresources/*.rb": {
      \   "command": "ares",
      \ },
      \ "app/admin/*.rb": {
      \   "command": "admin",
      \ },
      \ "app/interactors/*.rb": {
      \   "command": "int",
      \ }} 


" ===================================================================
" --- Final Section
" ===================================================================
set secure

" --- цветовая схема RailsCasts
"     см. https://github.com/jpo/vim-railscasts-theme
colorscheme railscasts
