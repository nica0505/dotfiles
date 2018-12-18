export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"
export PATH=$PATH:/usr/local/bin/:$HOME/go/bin
export GH_BASE_DIR="$HOME/go/src"

ZSH_THEME="avit"

plugins=(
  git gh
)

source $ZSH/oh-my-zsh.sh
source ~/.functions

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alex/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alex/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alex/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alex/google-cloud-sdk/completion.zsh.inc'; fi