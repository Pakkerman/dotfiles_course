# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# The Instant Prompt is disable for now
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source ~/powerlevel10k/powerlevel10k.zsh-theme


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh








# ----- Dotfiles Course Section -------------
# Set Variables
# Syntax Highlighting for man Pages Using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH options


# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'



# Customize Prompt(s)
# PROMPT='
# %1~ %L %# '
# RPROMPT='%*'


# Add Location to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/contents/Resources/app/bin"




# Write Handy Functions
# Create new directory and cd into it
function mkcd() {
	mkdir -p "$@" && cd "$_";
}

# cd and open with code in one line
function cc() {
  if [ -n "$1" ]; then
    cd "$1" && code .
  else
    echo "Usage: cc /path/to/your/directory"
  fi
}

# Shorten "npx jest ..."
function nj(){
  if [ -n "$1" ]; then
    npx jest "$1"
  else
    echo "Usage: nj [jest test file]"
  fi
}

# Open remote repo on Github.com
function openremote(){
  git remote -v | grep origin | grep github.com -m 1 | awk '{print $2}' | cut -d'@' -f2 | xargs open
}


# Use ZSH Plugins

# ...And Other Surprises



# pnpm
export PNPM_HOME="/Users/Pakk/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end


# keybinds
bindkey "[D" backward-word
bindkey "[C" forward-word

# bun completions
[ -s "/Users/pakk/.bun/_bun" ] && source "/Users/pakk/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
