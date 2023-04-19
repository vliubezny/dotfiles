#!/usr/bin/env fish

set -l path_to_shell (which fish)
if not grep -q "$path_to_shell" /etc/shells
    echo "Setting default shell to $path_to_shell"
    echo "$path_to_shell" | sudo tee -a /etc/shells >/dev/null
    chsh -s "$path_to_shell"
end

echo "Installing fisher and fisher plugins"
curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher
fish -c "fisher update"
