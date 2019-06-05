# Make prompts support displaying information about the current git repository.

# On Debian-based systems this is usually already sourced and needn't be again.
# . /usr/lib/git-core/git-sh-prompt

git_prompt_part='$(__git_ps1 " (%s)")'
case "$TERM" in xterm-color|*-256color) # See color_prompt in Debian's .bashrc.
    git_prompt_part='\[\033[36m\]'"$git_prompt_part"'\[\033[0m\]';;
esac

PS1="${PS1/%\\$ /$git_prompt_part\\$ }" # Put Git info before a final $ if any.
unset git_prompt_part

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=1
