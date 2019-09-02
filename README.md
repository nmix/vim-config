# vim-config

**vim-config** - конфигурация редактора [vim](https://vim8.org) для работы преимущественно в RubyOnRails и GoLang.

## Состав модулей

* [bundler.vim](https://github.com/tpope/vim-bundler)
* [commentary.vim](https://github.com/tpope/vim-commentary)
* [dispatch.vim](https://github.com/tpope/vim-dispatch)
* [rails.vim](https://github.com/tpope/vim-rails)
* [ruscmd](https://github.com/powerman/vim-plugin-ruscmd)
* [sensible.vim](https://github.com/tpope/vim-sensible)
* [surround.vim](https://github.com/tpope/vim-surround)
* [vim-go](https://github.com/fatih/vim-go)
* [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [vim-toml](https://github.com/cespare/vim-toml)

## Использование

```bash
# --- первоначальная установка
cd
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

![color-scheme](https://purl.onrails.ru/files/e655a0c0-6886-4b80-9d64-7382e8266bea.jpeg)

