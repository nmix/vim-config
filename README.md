# vim-config

**vim-config** - personal [vim](https://vim8.org) configuration for dev and ops.

## Plugins

Name | Url
---|---
fzf | https://github.com/junegunn/fzf.vim
indentLine | https://github.com/Yggdroot/indentLine
syntastic | https://github.com/vim-syntastic/syntastic
vim-commentary | https://github.com/tpope/vim-commentary
vim-cyr | https://github.com/powerman/vim-plugin-ruscmd
vim-javascript-syntax | https://github.com/jelera/vim-javascript-syntax
vim-jinja | https://github.com/lepture/vim-jinja
vim-nginx | https://github.com/chr4/nginx.vim
vim-rails | https://github.com/tpope/vim-rails
vim-sensible | https://github.com/tpope/vim-sensible
vim-slim | https://github.com/slim-template/vim-slim
vim-snippets | https://github.com/honza/vim-snippets
vim-surround | https://github.com/tpope/vim-surround
vim-terraform | https://github.com/hashivim/vim-terraform
vim-toml | https://github.com/cespare/vim-toml
vim-ultisnips | https://github.com/SirVer/ultisnips
vim-vagrant | https://github.com/vim-scripts/vim-vagrant


## Quickstart
```bash
# --- install fzf
cd
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# --- install flake8
pip install flake8
# --- install vim-config
git clone https://github.com/nmix/vim-config.git .vim-config
ln -s ~/.vim-config/.vimrc .vimrc
ln -sfnv ~/.vim-config/.vim .vim
cd .vim-config
git submodule update --init --recursive  --remote

# --- update
cd ~/.vim-config
git submodule update --init --recursive  --remote

# --- add new plugin (e.g. vim-jsonnet)
git submodule add https://github.com/google/vim-jsonnet.git .vim/bundle/vim-jsonnet
git add .
git commit -m 'added jsonnet module'
git push -u origin master

# --- remove module
# see https://gist.github.com/myusuf3/7f645819ded92bda6677
```

## Color scheme

[Vim Railscasts Colorscheme](https://github.com/jpo/vim-railscasts-theme)

![example](https://clck.ru/gcVfn)

## Snippets

[vim-snippets](https://github.com/honza/vim-snippets) examples:

* OpenApi/Swagger - [docs/openapi-snippets.md](docs/openapi-snippets.md)
