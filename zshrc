for file in ~/.config/zsh/*.zsh; do
		  source "$file"
done


if [[ ! -f /tmp/fshown ]]; then
		  fortune
		  touch /tmp/fshown;
else
		  if [ $(($(date +%S)%2)) -eq 0 ] && [ -f /tmp/fshown ]; then
					 rm /tmp/fshown;
		  fi
fi
