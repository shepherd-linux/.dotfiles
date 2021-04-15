#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

export EDITOR=nvim
export BROWSER=brave
export PAGER=less
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export LESSHISTFILE=-
### ENV ###
export GTK_THEME=Arc-Dark
export PATH=$PATH:~/bin:~/.local/bin
export STARSHIP_CONFIG=~/.config/starship/starship.toml
### Aliases ###
alias ls='exa --color=always -a --group-directories-first --icons'
# Hacky way to get result similar to --no-permissions (not implemented)
alias ll='exa --color=always -a --group-directories-first --icons  --long -b -h'
alias scim='sc-im'
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
# Begin color prompt:	\e[
# End color prompt:	\e[m
# Color code:		x;ym
#PS1="\e[1;31m[\e[m\u@\h \W\e[1;31m]\e[m:\e[1;35m\$?\e[m\$ "

if [[ -e ~/.thumbnails || ~/.pki ]] ; then
	rm -rf ~/.thumbnails ~/.pki
fi



eval "$(starship init bash)"
