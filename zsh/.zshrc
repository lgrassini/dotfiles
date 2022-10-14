autoload -Uz vcs_info

export PATH="$HOME/.composer/vendor/bin:$PATH"

# MySql client
export PATH="/usr/local/mysql/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Navigation aliases

# Prompt
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{green}[%b]%f '
setopt PROMPT_SUBST
PROMPT='%. ${vcs_info_msg_0_}$ '

export PATH="/usr/local/opt/openssl@3/bin:$PATH"
export PATH="/Users/lisandro/Scripts:$PATH"

alias ls='ls -G'
alias ll='ls -lG'

export PATH="/usr/local/opt/openssl@3/bin:$PATH"
export PATH="/usr/local/opt/openssl@3/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"
