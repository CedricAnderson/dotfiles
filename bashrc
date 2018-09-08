
# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

export GPG_TTY=$(tty)

# System Maintainence
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias sdn="sudo shutdown now"

# Some aliases
alias l="ls -la"
alias p="sudo pacman"
alias SS="sudo systemctl"
alias ka="killall"
alias rf="source ~/.bashrc"
alias bw="wal -i ~/.config/wall.png" # Rerun pywal
alias mon="xrandr --output VGA1 --auto --left-of LVDS1"
alias ca="setxkbmap ca -variant fr"
alias us="setxkbmap us"
alias chat="irssi"
alias quick="xset r rate 200 50"
alias pia="sudo pypia -f"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

#import drops
	source ~/.drops
