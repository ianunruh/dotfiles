# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="brian"

# Aliases
alias atlas="ssh ianunruh@atlas.ianunruh.com -t screen -rd"
alias cougar="ssh iunruh@cougar.cis.ksu.edu"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"

# Vagrant aliases
alias vs="vagrant ssh"
alias vu="vagrant up --no-provision"
alias vp="vagrant provision"
# Depends on the vagrant-vbox-snapshot plugin
alias vsb="vagrant snapshot back"
alias vst="vagrant snapshot take"

function vr() {
  vagrant snapshot back $1
  vagrant provision $1
}

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby vagrant)

PATH=$HOME/.rvm/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export ANDROID_HOME=$HOME/android-sdk

export EDITOR="vim"

