# Author Michel Hiemstra <mhiemstra@php.net>
# Fri Sep 13 2013

prompt_svn() {
  if svn_is_inside; then
    local ref dirty
    echo -n "%{$fg[yellow]%}$(svn_get_branch_name)%{$reset_color%}@%{$fg[magenta]%}r$(svn_rev)$dirty"
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

timeprompt="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"

PROMPT='$timeprompt %{$fg[magenta]%}%n%{$reset_color%}%{$fg[cyan]%}@%{$reset_color%}%{$fg[yellow]%}%m%{$reset_color%}%{$fg[red]%}:%{$reset_color%}%{$fg[cyan]%}%0~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}⇒%{$reset_color%}  '
RPROMPT='$(prompt_svn)%{$reset_color%}'
