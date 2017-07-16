autoload -U colors && colors

for color in red green yellow blue magenta cyan black white; do
    eval $color='%{$fg_no_bold[${color}]%}'
    #eval ${color}_bold='%{$fg_bold[${color}]%}'
done

reset="%{$reset_color%}"


export PROMPT='${cyan}[${magenta}%n${cyan}] ${red}→${reset} '
export PROMPT2='${red}%i>${reset} '

git_prompt() {
  temp=`git symbolic-ref HEAD 2>/dev/null | cut -d / -f 3`
  if [ "$temp" != "" ]; then echo "$temp:"; fi
}
setopt prompt_subst
export RPROMPT='${cyan}[${red}$(git_prompt)${magenta}%~${cyan}][${white}%y%b${cyan}]${reset}'
