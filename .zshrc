# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-history-substring-search last-working-dir)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/diamond/3.13/bin/lin64/diamond:$PATH"

bindkey  -M vicmd '^[[A' history-substring-search-up
bindkey  -M vicmd '^[[B' history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

export GIT_EDITOR=nvim

# Compilation flags
#export ARCHFLAGS="-arch x86_64 -O3 "

alias v="nvim"
alias up="yay -Syu"
alias sus="systemctl suspend"
alias h="cd ~"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/matt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export LM_LICENCE_FILE=/home/matt/Downloads/license.dat

# Zsh-vi plugin
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
