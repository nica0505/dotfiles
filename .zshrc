export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"
export PATH=$PATH:/usr/local/bin/:$HOME/go/bin
export GH_BASE_DIR="$HOME/go/src"
export LANG=C

ZSH_THEME="af-magic"

plugins=(
  git gh
)

source $ZSH/oh-my-zsh.sh
source ~/.functions

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
