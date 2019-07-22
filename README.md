# git\_prompt\_activate - puts formatted \_\_git\_ps1 in $PS1

*Written in 2019 by Eliah Kagan \<degeneracypressure@gmail.com\>.*

*To the extent possible under law, the author(s) have dedicated all copyright
and related and neighboring rights to this software to the public domain
worldwide. This software is distributed without any warranty.*

*You should have received a copy of the CC0 Public Domain Dedication along with
this software. If not, see
<http://creativecommons.org/publicdomain/zero/1.0/>.*

This project provides a script that, when sourced in Bash, writes information
about the Git repository you're inside (if any) in the shell's primary prompt.

This is an alternative to changing existing lines in shell rc files that define
or modify `$PS1`. Instead of doing that, I wrote this file, which I source on
most of my machines where I use `git`.

### To use:

1. Copy `.git_prompt_activate.bash` to `$HOME`:

    ```sh
    cp .git_prompt_activate.bash ~
    ```

2. Edit `.bashrc` (such as by running `nano ~/.bashrc`) and add this at/near the
end:

    ```bash
    # add information to the prompt about the current git repository, if any
    . ~/.git_prompt_activate.bash
    ```
