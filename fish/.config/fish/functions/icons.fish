#!/usr/bin/env fish

function icons --description "Translates program names to icons, so we an use them in our tmux config."
  switch $argv[1]
    case ack fd find fzf grep rg
      echo 
    case atop htop top
      echo 
    case bash fish zsh
      echo 
    case bat cat
      echo 
    case clx
      echo 
    case cp duplicate
      echo 
    case curl http pint lynx wget w3m
      echo 
    case docker docker-compose
      echo 󰡨
    case kubectl
      echo 󱃾
    case exa lf ls nnn ranger
      echo 
    case elixir mix
      echo 
    case gh
      echo 
    case git lazygit tig
      echo 
    case glow
      echo 
    case go
      echo 
    case java mvn
      echo 
    case less more
      echo 
    case lua
      echo 
    case man
      echo 
    case nano pico
      echo פֿ
    case node npm yarn
      echo 󰎙
    case nvim vim vi
      echo 
    case python pip
      echo 
    case rsync
      echo 
    case ruby irb
      echo 
    case scp ssh
      echo 
    case sleep
      echo 
    case spin
      echo 
    case sudo
      echo 
    case tail
      echo 
    case tmux
      echo 
    case youtube-dl
      echo 
    case '*'
      echo $argv[1]
  end
end
