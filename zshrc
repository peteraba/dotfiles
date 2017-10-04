# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lig"
# ZSH_THEME="omega-minimal"
# ZSH_THEME="schminitz"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyy.mm.dd"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/dotfiles/zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
function add_linux_plugins() {
  if [[ -n "$(which pacman)" ]]; then
    plugins+=archlinux
  elif [[ -n "$(which apt-get)" ]]; then
    plugins+=debian
    plugins+=ubuntu
  elif [[ -n "$(which dnf)" ]]; then
    # plugins+=fedora
    plugins+=dnf
  elif [[ -n "$(which zypper)" ]]; then
    plugins+=suse
  elif [[ -n "$(which yum)" ]]; then
    plugins+=yum
  fi
}
function add_osx_plugins() {
  if [[ -n "$(which brew)" ]]; then
    plugins+=brew
  fi
  if [[ -n "$(which macports)" ]]; then
    plugins+=macports
  fi
  plugins+=mac
}
function add_os_plugins() {
  if [[ "$OSTYPE" == "linux-gnu" ]]; then
    add_linux_plugins
  elif [[ "$OSTYPE" == "darwin" ]]; then
    add_osx_plugins
  fi
}
function add_experimental_plugins() {
  plugins+=cargo
  # plugins+=chucknorris
  plugins+=command-not-found
  plugins+=emoji
  plugins+=emoji-clock
  plugins+=gitignore
  # plugins+=lol
  plugins+=pj
  # plugins+=rand-quote
  plugins+=rust
  plugins+=rvm
  # plugins+=supervisorctl
  # plugins+=systemadmin
  # plugins+=systemd
  # plugins+=terraform
  # plugins+=tmux
  # plugins+=tmux-cssh
  plugins+=urltools
  plugins+=vault
  plugins+=web-search
}

plugins=(aws common-aliases copydir copyfile dirhistory docker fasd git git-extras git-prompt git_remote_branch golang httpie history last-working-dir ssh-agent sudo vi-mode yarn)

add_os_plugins
add_experimental_plugins

source $ZSH/oh-my-zsh.sh
  local current_path='%5~'
  if [ -n "$(git_current_branch)" ]; then
    current_path="$(current_repository)"
    current_path="$current_path[(w)1]"
  fi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Custom aliases
alias dc='docker-compose'
alias make="make --no-print-directory"
alias sloc="source ~/dotfiles/local.zsh"
alias vloc="vim ~/dotfiles/local.zsh"
alias cloc="cat ~/dotfiles/local.zsh"

# SSH-agent settings
# zstyle :omz:plugins:ssh-agent agent-forwarding on
# zstyle :omz:plugins:ssh-agent identities id_rsa id_rsa2 id_github
zstyle :omz:plugins:ssh-agent lifetime 2h

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Reload oh-my-zsh, optionally set a new theme
function ohmyzsh() {
  if ! [ $# -eq 0 ]; then
    ZSH_THEME="$1"
  fi

  echo "Reloading oh-my-zsh. Theme '$ZSH_THEME' to be loaded..."

  source $ZSH/oh-my-zsh.sh
}

# Start up GVM (Go Version Manager)
[[ -s "${HOME}/.gvm/scripts/gvm" ]] && source "${HOME}/.gvm/scripts/gvm"

# Start up RSVM (Rust Version Manager)
[[ -s "${HOME}/.rsvm/rsvm.sh" ]] && . "${HOME}/.rsvm/rsvm.sh"

# Load configs custom to this machine
[[ -s "${HOME}/dotfiles/local.zsh" ]] && source "${HOME}/dotfiles/local.zsh"

# Start mons deamon if mons is installed and not running
which mons > /dev/null
if [ $? -eq 0 ]; then
  ps -a | grep mons
  if [ $? -eq 1 ]; then
    mons -m &!
  fi
fi

# Set up thefuck aliases if installed
if [[ -n "$(which thefuck > /dev/null)" ]]; then
  eval $(thefuck --alias)
fi

TERMINAL="i3-sensible-terminal"
HOME_HOST="paba-ml"

# Using the lig theme the remote branch will be grepped and if this is not empty, than the branch will be desplayed in red
LIG_DANGEROUS_BRANCH=""

function gp()
{
  if [ -n "${LIG_DANGEROUS_BRANCH}" ] && [ -n "$(git remote get-url origin | grep '${LIG_DANGEROUS_BRANCH}')" ]; then
    echo ""
    echo "Pushing to a dangerous remote branch!!!"
    echo ""

    sleep 1

    echo "The push will continue in 3 seconds..."

    sleep 3
  fi

  git push
}
