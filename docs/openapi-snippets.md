
# OpenApi Snippets

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
