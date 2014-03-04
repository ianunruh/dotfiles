ZSH=$HOME/.oh-my-zsh

ZSH_THEME="eastwood"

# Aliases
alias atlas="ssh atlas.ianunruh.com -t screen -rd"
alias seahawk="ssh seahawk.ianunruh.com -t screen -rd"
alias viper="ssh iunruh@viper.cis.ksu.edu"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"

# Vagrant aliases
alias vs="vagrant ssh"
alias vd="vagrant destroy"
alias vu="vagrant up --no-provision"
alias vp="vagrant provision"
# Depends on the vagrant-vbox-snapshot plugin
alias vsb="vagrant snapshot back"
alias vst="vagrant snapshot take"

function vr() {
  vagrant snapshot back $1
  vagrant provision $1
}

# bit.ly/1kU0Ur8
alias such="git"
alias very="git"
alias wow="git status"

DISABLE_CORRECTION="true"

# zsh plugins
plugins=(git rails ruby)

export EDITOR="vim"
export PATH=$HOME/bin:$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:$PATH
# Used for boot2docker
export DOCKER_HOST=tcp://localhost:4243

source $ZSH/oh-my-zsh.sh
