# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/joe/.zshrc'

autoload -Uz compinit
compinit
#promptinit
# End of lines added by compinstall

#prompt walters

source /usr/share/doc/pkgfile/command-not-found.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt HIST_IGNORE_DUPS

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-bespin.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -A'
alias lm='la | more'
alias vi='vim'
alias da='date "+%A, %B %d, %Y [%T]"'
alias grep='grep --color=auto'
alias diff='colordiff'
alias more='less'
alias ping='ping -c 5'
alias nano='nano -w'
alias wget='wget -c'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -c -h'
alias open='xdg-open'
alias ports='netstat --all --numeric --programs --inet --inet6'
alias pg='ps -Af | grep -v grep | grep $1'
alias histg='history | grep'
alias k='ssh-add'
alias extip='curl http://icanhazip.com'
alias svim='sudo vim'
alias reboot='sudo reboot'
alias shutdown='sudo poweroff'
alias poweroff='sudo poweroff'
alias m='make'
alias mc='make clean'
alias codepad='wgetpaste -C'
alias cuvpn='sudo openconnect cuvpn.clemson.edu'
alias cpanm='cpanm --notest'
alias music='cmus'
alias screenshot='maim'
alias podcast='greg'
alias paint='pinta'
alias youtube='mpsyt'

#Help command
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
#unalias run-help
alias help=run-help

#path commands
export PATH=$PATH:~/.gem/ruby/2.2.0/bin:/home/joe/bin
export VISUAL=vim
export EDITOR=vim
export BROWSER=chromium

if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0222222"
	echo -en "\e]P8666666"
	echo -en "\e]P1cc4747"
	echo -en "\e]P9bf5858"
	echo -en "\e]P2a0cf5d"
	echo -en "\e]PAb8d68c"
	echo -en "\e]P3e0a524"
	echo -en "\e]PBedB85c"
	echo -en "\e]P44194d9"
	echo -en "\e]PC60aae6"
	echo -en "\e]P5cc2f6e"
	echo -en "\e]PDdb588c"
   	echo -en "\e]P66d878d"
    echo -en "\e]PE42717b"
	echo -en "\e]P7dddddd"
	echo -en "\e]PFdddddd"
	clear
fi

cd "$AUTOCD"
