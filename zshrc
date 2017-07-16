autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
autoload -Uz compinit promptinit
compinit
promptinit


for conf in ~/.config/zsh/*.zsh;
do
	source $conf
done
