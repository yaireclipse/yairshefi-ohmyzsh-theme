function repeatWidth() {
  s="-"
  for i in {2..$COLUMNS}; do
  	s+="-"
  done
  echo $s
}

#local line_separator="%{$fg_bold[yellow]%}------------------------------------------------------%{$reset_color%}
local line_separator="%{$fg_bold[yellow]%}$(repeatWidth)%{$reset_color%}
"
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${line_separator}${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"