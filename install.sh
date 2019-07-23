ZSH_SOURCE="$HOME/.config/zsh/"

conf_files='zshrc zprofile zshenv'

for file in $conf_files; do
		  if [ -e "${HOME}/.${file}" ] || [ -L "${HOME}/.${file}" ]; then
					 mv -f "${HOME}/.${file}" "${HOME}/.${file}.old"
		  fi
		  ln -s "${ZSH_SOURCE}${file}" "${HOME}/.${file}"
done
