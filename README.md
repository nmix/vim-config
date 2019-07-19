# vim-config

**vim-config** - конфигурация редактора [vim](https://vim8.org) для работы преимущественно в RubyOnRails и GoLang.

## Состав модулей

* [rails.vim](https://github.com/tpope/vim-rails)
* [bundler.vim](https://github.com/tpope/vim-bundler)
* [dispatch.vim](https://github.com/tpope/vim-dispatch)
* [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [commentary.vim](https://github.com/tpope/vim-commentary)
* [surround.vim](https://github.com/tpope/vim-surround)
* [ruscmd](https://github.com/powerman/vim-plugin-ruscmd)
* [sensible.vim](https://github.com/tpope/vim-sensible)
* [vim-go](https://github.com/fatih/vim-go)
* [vim-compiler-go](https://github.com/rjohnsondev/vim-compiler-go)

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
```

## Цветовая схема

[Vim Railscasts Colorscheme](https://github.com/jpo/vim-railscasts-theme)

![color-scheme](https://purl.onrails.ru/files/e655a0c0-6886-4b80-9d64-7382e8266bea.jpeg)

