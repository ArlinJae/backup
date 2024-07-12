[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="%A, %Y-%m-%d %H:%M:%S"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias python='python3'
alias pip='pip3'
alias glci='gitlab-ci-local --cwd .'
alias last='ls -t | head -n1'

export HOMEBREW_NO_ENV_HINTS=1

export PATH="$PATH:$HOME/.local/bin"

[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
