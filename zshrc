# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/didi/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
fpath=(~/.zsh/completion $fpath)

ZSH_THEME=""

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-autosuggestions
    kubectl
    poetry
    docker
)
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# poetry
export PATH=~/.poetry/bin:$PATH
export POETRY_VIRTUALENVS_PATH=~/envs

# virtualenwrapper
export WORKON_HOME=/home/didi/envs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3


# deno
export DENO_INSTALL="/home/didi/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# lazy node
# lazynvm() {
#     unset -f nvm node npm
#       export NVM_DIR=~/.nvm
#         [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#       }
# nvm() {
#     lazynvm
#       nvm $@
#     }
# node() {
#     lazynvm
#       node $@
#     }
# npm() {
#     lazynvm
#       npm $@
#     }
export NVM_DIR=~/.nvm
 [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# aliases
alias n="nvim ."
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc"
alias dotfiles="cd ~/dotfiles"
alias leaf="cd ~/leaf"
alias xplore="explorer.exe ."
alias gst="git status"
alias gplo="git pull origin master"
alias gpo="git push --all origin"
alias gpa="git remote | xargs -L1 git push --all"
alias reload="source ~/.zshrc"
alias esoc="ssh root@10.0.4.20"
alias lt01="ssh root@10.0.50.50"
alias es01="ssh root@10.0.51.50"
alias it01="ssh root@10.0.52.50"
alias ie01="ssh root@10.0.53.50"
alias us01="ssh root@10.0.54.50"
alias pt02="ssh root@10.0.55.50"
alias it02="ssh root@10.0.14.50"
alias labtest="ssh root@10.0.2.16"
alias bg01="ssh root@10.0.56.50"
alias kiruna="ssh root@10.0.4.28"
alias pt="ssh root@10.0.4.51"
alias es02="ssh root@10.0.51.55"
alias lowload="ssh root@10.132.0.3"
alias utils01="ssh root@10.132.0.23"
alias nz01="ssh root@10.0.57.50"
alias pclab="ssh pietro@10.0.2.14"
alias glog='git log --oneline --decorate --graph'
alias sshnuron='ssh root@10.164.0.2'
alias uk01='ssh root@10.0.61.50'
alias bg02='ssh root@10.0.60.50'
alias lk01='ssh root@10.0.59.50'
alias au01='ssh root@10.0.62.50'
alias test02='ssh root@10.0.2.21'
alias se01='ssh root@10.0.58.50'
alias is01='ssh root@10.0.48.50'
alias au02='ssh root@10.0.49.50'
alias gse='ssh root@10.0.4.13'
alias labtest02='ssh root@10.0.4.140'
alias labtest20='ssh root@10.0.4.38'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$PATH:/home/didi/.local/bin"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# tmux
if [ -z "$TMUX" ]
then
            cd ~;
                tmux attach -t TMUX || tmux new -s TMUX
fi

# zellij
# if [ -z "$ZELLIJ" ]
# then
#            cd ~;
#                zellij
# fi

# exa
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type --git'
fi

# bat
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat --theme="Dracula"'
fi

# again pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv init --path)"
fi

eval "$(starship init zsh)"
# eval "$(oh-my-posh --init --shell zsh --config ~/.poshthemes/didi.omp.json)"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
export PATH=~/bin:$PATH
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
