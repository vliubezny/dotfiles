#!/usr/bin/env bash

set -e

current_dir="$( dirname -- "${BASH_SOURCE[0]}" )"

brew bundle --file="$current_dir/Brewfile" 

echo "Installing asdf"
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.11.3
bash -c ". $HOME/.asdf/asdf.sh"
asdf update

asdf plugin add nodejs
asdf plugin add golang
asdf plugin add terraform
asdf plugin add vault
asdf plugin add helm
asdf plugin add kubectl

mkdir -p "$HOME/.config/fish/completions"
ln -sf "$HOME/.asdf/completions/asdf.fish" "$HOME/.config/fish/completions"

$current_dir/install_dotfiles.fish
$current_dir/setup_fish.fish
