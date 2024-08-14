if status is-interactive
    # Commands to run in interactive sessions can go here

    if type -q exa
	alias ll "lsd -l --icon always"
	alias lla "ll -a"
    end	

    fish_config theme choose "TokyoNight Storm" 

    pyenv init - | source
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/rohan/anaconda3/bin/conda
    eval /Users/rohan/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


# Created by `pipx` on 2024-07-08 09:00:27
set PATH $PATH /Users/rohan/.local/bin
