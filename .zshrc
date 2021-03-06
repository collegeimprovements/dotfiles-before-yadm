set -o vi
# to show the vim mode in the terminal - but as set -o vi is not working I've commented it out.

# function zle-line-init zle-keymap-select {
#     RPS1="${${KEYMAP/vicmd/--NOR--}/(main|viins)/--INS--}"
#     RPS2=$RPS1
#     zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select




#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# PATH="/usr/local/bin:/usr/local/sbin:$PATH" #aa stackoverflow parthi joine karelu 6e

#export EDITOR="vim"
# bindkeys -v

# Use vim as the editor
export EDITOR=vi
bindkey -v
# GNU Screen sets -o vi if EDITOR=vi, so we have to force it back.
set -o emacs



#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# ----------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="doubleend"  ##andrew burgess
ZSH_THEME="philips"

mcd() {
  mkdir -p $1
  cd $1
}


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.   $PATH:~/bin
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby bower bundler common-aliases dirhistory git-extras github httpie jira jsontools osx pip pow svn tmux vi-mode wd zsh-syntax-highlighting)

# -------------------------------------------------------------------
# Git - aliases - taken from : https://gist.github.com/zanshin/1142739
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gc='git commit -m'
alias gca='git commit -am'
alias gb='git branch'
alias gch='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'

alias md="mkdir"
alias la="ls -a"
alias ld="ls -d */"
alias desk="cd ~/Desktop/"
alias lb="cd Documents/Learning\ Basic/"
alias learning="cd ~/Documents/Learning\ Basic/"
alias lynda="cd ~/Documents/Learning\ Basic/Lynda/"
alias tutsplus="cd ~/Documents/Learning\ Basic/Tutsplus/"
alias codeschool="cd ~/Documents/Learning\ Basic/Codeschool/"
alias peepcode="cd ~/Documents/Learning\ Basic/Peepcode/"
alias lynda="cd ~/Documents/Learning\ Basic/Lynda/"
alias icloud="cd  /Users/arpit/Library/Mobile\ Documents/com\~apple\~CloudDocs/"
alias railscasts="cd ~/Documents/Learning\ Basic/▬Railscasts.Pro..Video.Tutorials.for.Ruby.on.Rails.Updated.19.02.2012▬/"
alias sayanee="cd ~/Documents/Learning\ Basic/Sayanee/"
alias mchild="cd ~/Documents/ruby-rails-mchild-saasapp-pragstudio/mchild/"
alias books="cd ~/Dropbox/I\ ♥\ Books/Books\ I\ download\ with\ love\ ♥♥♥"
alias c="clear"
alias src='source ~/.zshrc' #sayanee
alias rd='rm -rf'
alias rp="cd ~/Documents/Projects"
alias mp="cd ~/Documents/Projects/mproject"

alias zrc="subl ~/.zshrc"
alias ...="cd ../.."
alias ..="cd ../"
alias cd..="cd.."
alias bd="~/dotfiles/bootstrap.sh"


alias ydl="youtube-dl -f 18"
alias cls="clear"

#/usr/local/bin:/usr/local/sbin:/Users/<your account>/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------
# Chruby
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	#source '/usr/local/share/chruby/chruby.sh'
	#source '/usr/local/share/chruby/auto.sh'
	#chruby ruby-2.1.3


# -------------------------------------------------------------------

# Customize to your needs...#.:~/bin sharuaat ma

#main # export
#PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:/Users/arpit/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin #/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/$PATH:~/bin:bin:$PATH/
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# export PATH="/usr/local/lib/ruby/2.0.0/bin:$PATH"
export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/share/npm/bin:/usr/local/sbin:~/bin:$PATH" ##delete -for npm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PATH="/Users/arpit/bin:$PATH"


# ##for rvm if not works remove the line below
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# export PATH=/usr/local/bin:$PATH
# export PATH=/usr/local/bin:$PATH


#-----------rbenv
#{}"$(rbenv init -)"



#export PYENV_ROOT="${HOME}/.pyenv"

#if [ -d "${PYENV_ROOT}" ]; then
 #   export PATH="${PYENV_ROOT}/bin:${PATH}"
  #  eval "$(pyenv init -)"
#followin
#
#
#
#
#
#Settingfor z installed via Homebrew
## Move next only if `homebrew` is installed

if command -v brew >/dev/null 2>&1; then
        # Load rupa's z if installed
     [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi                                                        




#
#
#
#NVM Settings
. ~/.nvm/nvm.sh
nvm use 0.12.5
clear
