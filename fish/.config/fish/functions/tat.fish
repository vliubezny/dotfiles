#!/usr/bin/env fish

function tat --argument-names name \
    --description 'Attach or create tmux session named the same as current directory.'

  test -n "$name" || set -l name (basename "$PWD" | tr . -)
  if test -z "$TMUX"
    tmux new-session -As "$name"
  else
    if ! tmux has-session -t "=$name" 2>/dev/null
      TMUX='' tmux new-session -Ad -s "$name"
    end
    tmux switch-client -t "$name"
  end
end
