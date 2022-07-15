function fish_prompt
	printf '%s %sλ %s %s%s %s%s→%s ' (date "+%H:%M:%S") (set_color yellow) $hostname (set_color $fish_color_cwd) (prompt_pwd) (set_color yellow) (fish_git_prompt) (set_color normal)
end
