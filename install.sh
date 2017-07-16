ZSH_SOURCE='~/.config/zsh/'

conf_files='zshrc zprofile zshenv'

for file in $conf_files; do
		  if [ -e "${HOME}/.${file}" ] || [ -L "${HOME}/.${file}" ]; then
					 echo 101
					 mv -f "${HOME}/.${file}" "${HOME}/.${file}.old"
		  fi
		  ln -s "${ZSH_SOURCE}${file}" "${HOME}/.${file}"
done
