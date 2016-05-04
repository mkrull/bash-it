#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

venv() {
  if [ ! -z "$VIRTUAL_ENV" ]
  then
    local env=$VIRTUAL_ENV
    echo "${gray} in ${orange}${env##*/} "
  fi
}

prompt() {
  PS1="${yellow}$(scm_char) ${reset_color}\w$(scm_prompt_info)${reset_color}$(venv)${reset_color} ${cyan}\n> ${reset_color}"
}

PROMPT_COMMAND=prompt
