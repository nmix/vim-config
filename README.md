# vim-config

**vim-config** - конфигурация редактора [vim](https://vim8.org) для работы преимущественно в Ruby On Rails

## Состав модулей

Name | Url
---|---
fzf | https://github.com/junegunn/fzf.vim
indentLine | https://github.com/Yggdroot/indentLine
vim-commentary | https://github.com/tpope/vim-commentary
vim-cyr | https://github.com/powerman/vim-plugin-ruscmd
vim-javascript-syntax | https://github.com/jelera/vim-javascript-syntax
vim-markdown | https://github.com/preservim/vim-markdown
vim-nginx | https://github.com/chr4/nginx.vim
vim-rails | https://github.com/tpope/vim-rails
vim-sensible | https://github.com/tpope/vim-sensible
vim-slim | https://github.com/slim-template/vim-slim
vim-snippets | https://github.com/honza/vim-snippets
vim-surround | https://github.com/tpope/vim-surround
vim-toml | https://github.com/cespare/vim-toml
vim-ultisnips | https://github.com/SirVer/ultisnips
vim-vagrant | https://github.com/vim-scripts/vim-vagrant


## Использование
```bash
# --- первоначальная установка
cd
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/nmix/vim-config.git .vim-config
ln -s ~/.vim-config/.vimrc .vimrc
ln -sfnv ~/.vim-config/.vim .vim
cd .vim-config
git submodule update --init --recursive  --remote

# --- обновление
cd ~/.vim-config
git submodule update --init --recursive  --remote

# --- добавление модуля (напр. vim-toml)
git submodule add https://github.com/cespare/vim-toml.git .vim/bundle/vim-toml
git add .
git commit -m 'added toml module'
git push -u origin master
```

## Цветовая схема

[Vim Railscasts Colorscheme](https://github.com/jpo/vim-railscasts-theme)

![example](https://clck.ru/gcVfn)

## Snippets

Примеры сниппетов для [vim-snippets](https://github.com/honza/vim-snippetsффaa:aA:i:) :

* OpenApi/Swagger - [docs/openapi-snippets.md](docs/openapi-snippets.md)
