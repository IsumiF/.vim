# .vim

This is my own .vim configuration directory. Plugins are added as git submodules
(in directory `pack/plugins/start`), so you will need to use recursive clone, or
`git submodule update --init --recursive`

## Installation

Some plugins require external tools or running some installation script.
I didn't automate this process, as you may want to control your environment more
precisely.

### fzf

fzf is a fuzzy finder. You may have installed it on your computer. If not, use
`pack/plugins/start/fzf/install` to install one.

### LanguageClient-neovim

See `pack/plugins/start/LanguageClient-neovim/INSTALL.md` for details.
You need to run `install.sh` or `install.ps1`, depending on your OS.

Haskell IDE engine is required to provide language service. Follow
the [instructions](https://github.com/haskell/haskell-ide-engine).

### vim-stylish-haskell

`stylish-haskell` need to be on PATH. You may install one with `stack install
stylish-haskell`, or with `cabal-install`.

### fonts

Fonts placed at `font/` are expected by `gvimrc` to be installed on system.
On Ubuntu 18.04, for example, simply clicking those ttf files to install them.
