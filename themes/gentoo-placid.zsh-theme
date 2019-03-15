function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

# Original as a reference
# PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}) %{$fg_bold[green]%}%(!.%1~.%~)%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%_%{$reset_color%}%{$fg_bold[white]%}$(prompt_char)%{$reset_color%} '


# Manipulate path string using perl
# _fishy_collapsed_wd() {
#   echo $(pwd | perl -pe '
#    BEGIN {
#       binmode STDIN,  ":encoding(UTF-8)";
#       binmode STDOUT, ":encoding(UTF-8)";
#    }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
# ')
# }

# Manipulate path string with node
_fishy_collapsed_node() {
  echo $(node -p "const pwd = process.cwd().replace(process.env.HOME, '~'); 
  const s = pwd.split('/'); 
  s.length > 4 ? (s[0]+'/'+s[1]+'/.../'+s[s.length-2]+'/'+s[s.length-1]) : pwd")
}

# using _fishy_collapsed_node
PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}) %{$fg_bold[green]%}$(_fishy_collapsed_node)%{$reset_color%} %{$fg_bold[blue]%}$(git_prompt_info)%_%{$reset_color%}%{$fg_bold[white]%}$(prompt_char)%{$reset_color%} '

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
