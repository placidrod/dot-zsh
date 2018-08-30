function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}) %{$fg_bold[green]%}%(!.%1~.%~)%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%_%{$reset_color%}%{$fg_bold[white]%}$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "

_node_version() {
  local ver=$(nodenv version-name | sed -e "s/system//")
  if [[ !  -z  $ver  ]]; then
    echo " %{$fg[green]%}⬢ $ver%{$reset_color%}"
  fi
}
local return_status=" %{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
RPROMPT='${return_status}$(_node_version)%{$reset_color%}'