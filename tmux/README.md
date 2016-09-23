# tmux config

commands

https://learnxinyminutes.com/docs/tmux/

config based on the following sites

http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/

https://github.com/edkolev/tmuxline.vim

http://www.rushiagr.com/blog/2016/06/16/everything-you-need-to-know-about-tmux-copy-pasting/

to save snapshot file for tmux statusbar from vim `:TmuxlineSnapshot tmuxline.snapshot`

to load it tmux.conf `if-shell "test -f [file]" "source [file]"`
