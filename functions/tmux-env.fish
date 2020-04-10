function tmux_env -e fish_prompt -d "Update environment variables inside tmux"
    if test -n $TMUX
        eval (tmux show-environment | sed -E '/^-/!s/(.*)=(.*)/set -x \1 "\2"/;/^-/s/^-(.*)/set -u \1/;s/=/ /;s/$/;/')
    end
end
