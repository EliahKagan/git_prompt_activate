This project provides a script that, when sourced in Bash, writes information
about the Git repository you're inside (if any) in the shell's primary prompt.

Copy .git_prompt_activate.bash to $HOME. Add this at/near the end of .basrhc:

# add information to the prompt about the current git repository, if any
. ~/.git_prompt_activate.bash
