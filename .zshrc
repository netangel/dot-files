# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.vi .zs  
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
if [[ $OSTYPE =~ 'darwin' ]]; then
  ZSH_THEME="robbyrussell"
else
  ZSH_THEME="miloshadzic"
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git osx perl ruby rails gem)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# Add sbin for homebrewed packages
export PATH="/usr/local/sbin:$PATH"

# I'm using uft-8 terminal
# It's better to explicitly set this variables, 
# and not to guess from terminal settings
# May be I can use ru_RU here
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# More completions
fpath=(/usr/local/share/zsh-completions $fpath)
plugins=(ag $plugins)

# Perlbrew
if [ -f ~/perl5/perlbrew/etc/bashrc ]; then 
  PATH=$PATH:~/perl5/perlbrew/bin
  source ~/perl5/perlbrew/etc/bashrc
fi

# My aliases
# sudo fix for aliases
alias sudo="nocorrect sudo "
alias findstr="find . -type f | xargs grep"
