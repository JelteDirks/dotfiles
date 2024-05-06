# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

alias vim="nvim"
alias hbcurl="/opt/homebrew/opt/curl/bin/curl"
alias python="python3"

export DISABLE_FZF_KEY_BINDINGS="false"
export ZSH_TMUX_CONFIG="$XDG_CONFIG_HOME/tmux/tmux.conf"
export LANG=en_US.UTF-8
export EDITOR="nvim"
export PAGER="less"
export GPG_TTY="$(tty)"

export CPATH="/opt/homebrew/include:$CPATH"
export LIBRARY_PATH="/opt/homebrew/lib:$LIBRARY_PATH"

export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/Users/jeltedirks/.local/bin"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-20.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/Users/jeltedirks/go/bin:$PATH"


alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# These will find your IP and then allow incoming connections to it in order 
# to be able to popup windows from within docker containers.
function duckiebot_setup() {
  export IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
  xhost +$IP
}

alias lpython="/usr/bin/python3"

autoload -U compinit && compinit

. "$HOME/.cargo/env"
