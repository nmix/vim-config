# vim-config

**vim-config** - конфигурация текстового редактора [vim](https://vim8.org) для работы преимущественно в RubyOnRails.

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

## Цветовая схема

[Vim Railscasts Colorscheme](https://github.com/jpo/vim-railscasts-theme)

![color-scheme](https://purl.onrails.ru/files/e655a0c0-6886-4b80-9d64-7382e8266bea.jpeg)

## Использование

```bash
cd
git init
git remote add origin https://github.com/nmix/vim-config.git
git fetch
git checkout -t origin/master
git submodule update --init --recursive  --remote
```
