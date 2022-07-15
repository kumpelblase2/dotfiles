if status is-interactive
    source ~/.config/fish/env.fish

    function readenv --on-variable PWD
        if test -r .env.fish
            source .env.fish
        end
    end
end
