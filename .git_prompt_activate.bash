# .git_prompt_activate.bash - puts formatted __git_ps1 in $PS1
# This enables support for showing git repo status in the shell prompt.
#
# Written in 2019 by Eliah Kagan <degeneracypressure@gmail.com>.
#
# To the extent possible under law, the author(s) have dedicated all copyright
# and related and neighboring rights to this software to the public domain
# worldwide. This software is distributed without any warranty.
#
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software. If not, see
# <http://creativecommons.org/publicdomain/zero/1.0/>.

# shellcheck shell=bash
# shellcheck disable=SC2034  # GIT_PS1_ vars will be assigned for later use.
# shellcheck disable=SC2016  # PS1 will contain $ syntax for later expansion.

# On Debian-based systems this is usually already sourced and needn't be again.
# Uncomment only if necessary.
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
