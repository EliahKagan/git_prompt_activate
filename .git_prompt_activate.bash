# Make prompts support displaying information about the current git repository.

# On Debian-based systems this is usually already sourced and needn't be again.
# . /usr/lib/git-core/git-sh-prompt

prompt_suffix='\$ ' # If PS1 ends this way, we'll add a part for git before it.

git_prompt_part='$(__git_ps1 " (%s)")'
case "$TERM" in xterm-color|*-256color) # See color_prompt in Debian's .bashrc.
    git_prompt_part='\[\033[36m\]'"$git_prompt_part"'\[\033[0m\]';;
esac

PS1="${PS1/%\\$ /$git_prompt_part\\$ }"
unset prompt_suffix git_prompt_part

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=1
