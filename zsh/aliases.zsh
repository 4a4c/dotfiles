#### Alias ####

## Set some aliases from http://natelandau.com/my-mac-osx-bash_profile/
alias ls='ls -GFh'                          #commented this since ll alias is below
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias p='pwd'                               # pwd
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ..2='cd ../../'                       # Go back 2 directory levels
alias ..3='cd ../../../'                    # Go back 3 directory levels
alias ..4='cd ../../../../'                 # Go back 4 directory levels
alias ..5='cd ../../../../../'              # Go back 5 directory levels
alias ..6='cd ../../../../../../'           # Go back 6 directory levels
alias edit='atom'                           # edit:         Opens any file in atom editor
alias chrome='open -a "Google Chrome"'      # launch chrome, can pass file to open file
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
#alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

## My own aliases
alias chromemd='open -a "Google Chrome" *.md' # launch chrome and open all .md files in current directory
alias reload-bash='. ~/.bash_profile'
alias reload-zsh='. ~/.zshrc'
alias D='~/Desktop'
alias H='~'
alias tmux='tmux -2' # set tmux to start in 256
alias t='tmux'
alias tl='tmux ls' # list sessions
alias ta='tmux attach -t' # attach to session
alias ts='tmux new -s' # new sessionname
alias tsd='tmux new -d -s' # new detatched session
alias cd-notes='cd $HOME/gitProjects/github.com/4a4c/tech-notes'
alias cd-dot='cd $DOTFILES'
alias watch='watch '

## Kube Aliases
alias k="kubectl"
alias kctx="kubectx"
alias ku="kubectl config unset current-context"
alias koff="kubeoff"
alias kon="kubeon"
alias kns="kubens"
alias kg='kubectl get'
alias kgp='kubectl get pods -o wide'
alias kgn='kubectl get nodes'
alias kgs='kubectl get svc'
alias kgd='kubectl get deployment'
alias kgds='kubectl get daemonset'
alias kgrs='kubectl get rs'
alias kgc='kubectl get configmap'
alias kgss='kubectl get statefulset'
alias kgpv='kubectl get pv'
alias kgpvc='kubectl get pvc'
alias kgsc='kubectl get storageclass'
alias kgrc='kubectl get rc'
alias kgns='kubectl get namespace'
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdd='kubectl describe deployment'
alias kdds='kubectl describe daemonset'
alias kds='kubectl describe service'
alias kdss='kubectl describe statefulset'
alias kdrs='kubectl describe rs'
alias kdrc='kubectl describe rc'
alias kc='kubectl create'
alias kdl='kubectl delete'
alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias ke='kubectl exec -i -t'
alias ktp='kubectl top pod'
alias ktn='kubectl top node'
alias kallpods='kubectl get pods --all-namespaces -o wide'

#### functions ####

# Set functions to show or hide hidden files in Finder
function show-hiddeninfinder() {
  defaults write com.apple.finder AppleShowAllFiles -bool YES
  killall Finder
}

function hide-hiddenInFinder() {
  defaults write com.apple.finder AppleShowAllFiles -bool NO
  killall Finder
}

# Set functions to show or hide airdrop
function show-airDrop() {
  defaults write com.apple.NetworkBrowser DisableAirDrop -bool NO
  killall Finder
}

function hide-airDrop() {
  defaults write com.apple.NetworkBrowser DisableAirDrop -bool YES
  killall Finder
}
