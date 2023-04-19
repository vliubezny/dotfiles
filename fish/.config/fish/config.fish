set fish_greeting ""

set -gx LANG "en_US.UTF-8"
set -gx EDITOR nvim

# vi mode
fish_vi_key_bindings

# theme
set -g hydro_color_prompt magenta
set -g hydro_color_git green
set -g hydro_color_duration yellow

if type -q exa
  alias l "exa -lag --git --icons"
  alias lt "exa -aT --icons"
  alias llt "l -T"
end

# asdf
if test -f "$HOME/.asdf/asdf.fish"
  source "$HOME/.asdf/asdf.fish"
end

# go
set -gx GOPATH $HOME/go
fish_add_path -Pm $GOPATH/bin

if test -f "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"
  source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
