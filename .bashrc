case $- in
  *i*) ;;
    *) return;;
esacexport OSH='$HOME/.oh-my-bash'
OSH_THEME="agnoster"
OMB_USE_SUDO=true
completions=(
  git
  composer
  ssh
  dirs
  docker
  system
  tmux
  uv
)
aliases=(
  general
)
plugins=(
  git
  bashmarks
  #fzf #broken because of --bash argument in fzf (fzf too old). Should work in Ubuntu >v22.
)
source "$OSH"/oh-my-bash.sh

THEME_SHOW_CLOCK=false# from /usr/share/doc/fzf/README.Debiansource /usr/share/doc/fzf/examples/key-bindings.bash
#source /usr/share/doc/fzf/examples/completion.bash # not necessery for ubuntu 22 and higher
FZF_DEFAULT_OPTS="--reverse --height 90% --border"
FZF_CTRL_R_OPTS="--preview 'echo {2..} | batcat --color=always -pl sh' --preview-window wrap --preview-window=down:20%"
FZF_CTRL_T_OPTS="--preview 'batcat --color=always {}' --preview-window=right:80%"
# Hotkeys:
# Ctrl + R searches in the command history and show the results
# Ctrl + T searches for files in the current directory and subdirectories
# Alt + C cd to any subdirectory

