if which yaourt > /dev/null
then 
	alias y=yaourt
	alias upg="yaourt -Syu"
	alias upga="yaourt -Syua"
	alias inst="yaourt -S"
	alias rem="yaourt -R"
	alias asexplicit="yaourt -D --asexplicit"
	function orphans {
   	 yaourt -Rns $(pacman -Qdttq)
	}
fi

if which zypper > /dev/null
then
	alias inst="sudo zypper in"
	alias search="zypper se -d"
	alias rem="sudo zypper rm --clean-deps"
	alias ref="sudo zypper ref"
	alias up="sudo zypper ref && sudo zypper up"
	alias dup="sudo zypper dup"
fi


alias -g G='|grep'
alias -g GI='|grep -i'
alias -g T='|tail'
alias -g L='|less'
alias -g N='2>/dev/null'

alias svim='sudo vim'
alias root='sudo su -'
alias sc='sudo systemctl'
alias scu='systemctl --user'

alias htops='htop -d 10'
alias crontab='crontab -i'


alias mv='nocorrect mv'
alias cp='nocorrect cp -R'
alias rm='nocorrect rm'
alias rmf='nocorrect rm -f'
alias rmrf='nocorrect rm -fR'
alias mkdir='nocorrect mkdir'

alias ls='ls --color=auto -F'
alias ll='ls -l'
alias la='ls -A'
alias li='ls -ial'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias h=history
alias df='df -h'
alias du='du -h'
alias less='less -M'
alias wget='wget -c'


alias dco='docker-compose'

alias my="sudo chown $(id -u)"

# vim: ft=sh: 
