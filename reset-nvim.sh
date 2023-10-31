#!/bin/bash

# Remove Neovim extensions
rm -rf ~/.local/share/nvim/site/pack/default/start/*

# Remove Neovim cache files
rm -rf ~/.cache/nvim

# Remove Neovim socket file
rm -f /tmp/nvim.sock

# Remove Neovim temporary files
rm -rf /tmp/nvim-*
