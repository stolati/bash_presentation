# This project aim to teach some bash



# To launch it
`sudo brew install tmux`
`wget tinyurl.com/mike-pres-sh`
`bash mike-pres-sh`
`cd mike-pres-dir`

# First part : TMUX

launch the `./01_tmux.bash`

This is tmux, an advanced screen. It permit multiples bash session on the same screen.
And much much more.


Try the commands :
- Split vertically
- Switch to the previous one
- Create a new windows
- Switch back to the previous windows
- exit session
- list sessions
- return to the session


You can do that now on distant machines, quit the session and go back

You know the most used commands now

# Second part : Set

launch the `./02_scripts.bash`

Open the script on the right pane (Ctrl-b o, vim stuff, Ctrl-b o)

1 : test with command failling
2 : test with a more complex command failing
3 : the same command, without the test
4 : ways of handling errors commands
5 : used of an unused variable that failed
6 : same without the variable set
7 : how to handle empty variables and default values
8 : how -x is handy, it show what's happening
9 : how to use the -x output to another file for logs

# Third part aliases and functions

launch the `. ./03_aliases_fct.bash`


An alias is like a keyword that will be replaced by a command.
A function is a new command that exists in bash (not an exec).


I've created some aliases, fct

c : cd somewhere + ls
Try some cd ..
cd -
.. : cd ..
Try it
cd -
w : a watch that show when stuff change
p : ps
pg: ps followed by a grep
w pg bash : show all bash command in real time
Do you feel like a ninja ?


# Fourth part how to quote the right way

Spaces are the black sheep of unix shell. Because that's the way sh separate arguments.

Launch the 04,
Press enter, on each step, we see how it handle spaces.









