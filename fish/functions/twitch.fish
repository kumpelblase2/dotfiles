function twitch --description 'Opens a twitch stream' --argument stream quality
    if test -z "$quality"
        set -f quality "best"
    end
    streamlink "twitch.tv/$stream" "$quality"
end
