# Author Michel Hiemstra <mhiemstra@php.net>
# Fri Sep 13 2013

ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[magenta]%}r$(svn_rev)"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[green]%}r$(svn_rev)"
ZSH_THEME_SVN_PROMPT="%{$fg[yellow]%}$(svn_get_branch_name)%{$reset_color%}@"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

timeprompt="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
username="%{$fg[magenta]%}%n%{$reset_color%}"
hostname="%{$fg[yellow]%}%m%{$reset_color%}%{$fg[red]%}%{$reset_color%}"

PROMPT='$timeprompt $username%{$fg[cyan]%}@%{$reset_color%}$hostname:%{$fg[cyan]%}%0~%{$reset_color%}%{$fg[red]%}|%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}⇒%{$reset_color%}  '
RPROMPT='$(svn_prompt)%{$reset_color%}'