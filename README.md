# vim-config

**vim-config** - конфигурация редактора [vim](https://vim8.org) для работы преимущественно в Ruby On Rails

## Состав модулей

* fzf
* indentLine
* vim-bundler
* vim-commentary
* vim-cyr
* vim-dispatch
* vim-javascript-syntax
* vim-markdown
* vim-nginx
* vim-rails
* vim-sensible
* vim-slim
* vim-snippets
* vim-surround
* vim-toml
* vim-ultisnips
* vim-vagrant

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

![пример](https://clck.ru/gcVfn)

## Snippets

Примеры сниппетов для [vim-snippets](https://github.com/honza/vim-snippetsффaa:aA:i:) :

* OpenApi/Swagger - [docs/openapi-snippets.md](docs/openapi-snippets.md)

