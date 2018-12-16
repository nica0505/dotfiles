export ZSH="/Users/alex/.oh-my-zsh"
export PATH=$PATH:/usr/local/bin/:$HOME/go/bin

ZSH_THEME="avit"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.dockerfunc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alex/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alex/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alex/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alex/google-cloud-sdk/completion.zsh.inc'; fi