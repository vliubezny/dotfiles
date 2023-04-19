#!/usr/bin/env fish

set -l root (status dirname)/..
set -l dot_folders (fd -t d . $root | rg -v $root/scripts)

for folder in $dot_folders
  set -l package (basename $folder)
  echo "[-] $package"
  stow -D -d "$root" -v -t "$HOME" "$package"
end
