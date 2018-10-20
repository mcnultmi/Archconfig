#
# ~/.bash_profile
#

# Source .bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Append ~/.scripts directory to $PATH
export PATH="$PATH:$HOME/.scripts"

# Set default programs for certain variables
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"

# Autostart X if when booting into Arch. (Default tty will be /dev/tty1)
if [[ "$(tty)" == "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
