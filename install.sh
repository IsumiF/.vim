#!/bin/bash

plugin_base_dir=pack/plugins/start

echo "Installing fzf"
$plugin_base_dir/install

echo "Installing LangaugeClient-neovim"
$plugin_base_dir/LanguageClient-neovim/install.sh

