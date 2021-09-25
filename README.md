# vim-config

**vim-config** - конфигурация редактора [vim](https://vim8.org) для работы преимущественно в Ruby On Rails

## Состав модулей

* [bundler.vim](https://github.com/tpope/vim-bundler)
* [commentary.vim](https://github.com/tpope/vim-commentary)
* [dispatch.vim](https://github.com/tpope/vim-dispatch)
* [indentLine](https://github.com/Yggdroot/indentLine)
* [nginx.vim](https://github.com/chr4/nginx.vim)
* [rails.vim](https://github.com/tpope/vim-rails)
* [ruscmd](https://github.com/powerman/vim-plugin-ruscmd)
* [sensible.vim](https://github.com/tpope/vim-sensible)
* [surround.vim](https://github.com/tpope/vim-surround)
* [ultisnips](https://github.com/SirVer/ultisnips)
* [vim-cyr](https://github.com/powerman/vim-plugin-ruscmd)
* [vim-go](https://github.com/fatih/vim-go)
* [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [vim-slim](https://github.com/slim-template/vim-slim)
* [vim-snippets](https://github.com/honza/vim-snippets)
* [vim-toml](https://github.com/cespare/vim-toml)
* [vim-vagrant](https://github.com/hashivim/vim-vagrant)


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

![color-scheme](https://purl.onrails.ru/files/e655a0c0-6886-4b80-9d64-7382e8266bea.jpeg)

## OpenAPI Snippets

Ниже пиведены YML-сниппеты ([vim-snippets](https://github.com/honza/vim-snippets)) для быстрой разработки API документации в формате OpenAPI/Swagger.

```yaml
# --- Типы данных

snippet ta "type array"
description: $1
type: array
items:
  $2
endsnippet

snippet to "type object"
description: $1
type: object
properties:
  $2
endsnippet

snippet ti "type integer"
description: $1
type: integer
nullable: ${2:false}
example: ${3:0}
$0
endsnippet

snippet tf "type float"
description: $1
type: number
format: float
nullable: false1:true}
example: ${2:1.23}
$0
endsnippet

snippet ts "type string"
description: $1
type: string
nullable: ${2:true}
example: "${3:string}"
$0
endsnippet

snippet tbs "type binary string"
description: $1
type: string
format: binary
nullable: ${2:false}
$0
endsnippet

snippet tdt "type date-time"
description: $1
type: string
format: date-time
nullable: ${2:false}
$0
endsnippet

snippet turl "type url"
description: $1
type: string
format: uri
nullable: ${2:false}
example: "${3:http://example.com}"
$0
endsnippet

snippet tb "type boolean"
description: $1
type: boolean
default: ${2:false}
nullable: ${3:false}
$0
endsnippet

# --- Параметры запросов

snippet parip "parameter integer in path"
- name: $1
  in: path
  description: $2
  required: true
  schema:
    type: integer
endsnippet

snippet pars "parameter string in query"
- name: $1
  in: query
  description: $2
  required: ${3:false}
  schema:
    type: string
$0
endsnippet

snippet parsort "parameter for sorting"
- name: sort_by
  in: query
  description: Сортировка записей по заданному полю
  required: false
  schema:
    type: string
    enum: [$1]
$0
endsnippet


snippet parip "parameter integer in path"
- name: ${1}
  in: path
  description: ${2}
  required: true
  schema:
    type: integer
endsnippet


# --- ссылки

snippet refc "reference to component"
$ref: "#/components/schemas/$1"
endsnippet

# --- PATHS

snippet pathget "path get"
${1:get}:
  summary: $2
  operationId:  `!v expand('%:t:r')`
  tags:
    - $3
  parameters:
  responses:
    "200":
      description: Успешный запрос
      content:
        application/json:
          schema:

snippet pathpost "path post"
post:
  summary: $1
  operationId: ${2:`!v expand('%:t:r')`}
  tags:
    - $3
  requestBody:
    required: true
    content:
      application/json:
        schema:
          type: object
          properties:
          
  responses:
    "200":
      description: Успешный запрос
      content:
        application/json:
          schema:
endsnippet

# --- TEMPLATES

snippet init "init specification"
---
openapi: 3.0.1
info:
  version: v1
  title: My API
  description: |
    **My API** description
servers:
  - url: http://example.com
    description: Example server
tags: []
paths: {}
security: []
components:
  securitySchemes: {}
  headers: {}
  parameters: {}
  responses: {}
  schemas: {}
endsnippet

```







