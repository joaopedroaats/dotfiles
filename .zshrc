ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="λ"


# Oh My Zsh
export ZSH="/home/joaopedro/.oh-my-zsh"

# Android Studio
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Deno
export DENO_INSTALL="/home/joaopedro/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Flutter
export PATH="$PATH:`pwd`/flutter/bin"
export PATH="$PATH:`pwd`/flutter/bin/cache/dart-sdk/bin"

# Etc
export PATH="$PATH:$HOME/.rvm/bin" 
export PATH="$PATH:/home/joaopedro/anaconda3/bin"
export PATH="$PATH:/snap/bin"


alias zshrc="code ~/dotfiles/.zshrc"
alias hosts="code /etc/hosts"
alias dotfiles="code ~/dotfiles"

alias c.="code ." alias C.="c."                    
alias c..="code . && exit" alias C..="c.."

alias cdf="cd /run/media/joaopedro/External/Manjaro/folder/"
alias cdp="cd /run/media/joaopedro/External/Manjaro/projects/"

# <--  Folder  --> #
alias clweb="cdf && cd FolderWeb && c.."
alias clpy="cdf && cd FolderPython && c.."
alias cljs="cdf && cd FolderJavaScript && c.."

# Docker
alias dc="docker-compose"     
alias apacheConfig="code /etc/httpd/conf/httpd.conf"     

plugins=(
  git
  dnf
  fzf
  )

# source $ZSH/oh-my-zsh.sh
  
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
# End of Zinit's installer chunk

zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light zsh-users/zsh-history-substring-search
zplugin light zdharma/fast-syntax-highlighting
zplugin light buonomo/yarn-completion

### End of Zinit's installer chunk
fpath=($fpath "/home/joaopedro/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
