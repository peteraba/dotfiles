# vim:ft=zsh ts=2 sw=2 sts=2

# License: MIT
#
# Permission is hereby granted, without written agreement and without
# license or royalty fees, to use, copy, modify, and distribute this
# software and its documentation for any purpose, provided that the
# above copyright notice and the following two paragraphs appear in
# all copies of this software.
#
# IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE TO ANY PARTY FOR
# DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES
# ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN
# IF THE COPYRIGHT HOLDER HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
# DAMAGE.
#
# THE COPYRIGHT HOLDER SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING,
# BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
# FITNESS FOR A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS
# ON AN "AS IS" BASIS, AND THE COPYRIGHT HOLDER HAS NO OBLIGATION TO
# PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
#
# LIG: Lemmy is God
#
# Requirements:
#  - oh-my-zsh with git plugin enabled
#
# Hint: If you want to play around with the colors,
# spectrum_ls and spectrum_bls can come in handy

local lig_reset="%{$reset_color%}"
local lig_success="$FG[076]"
local lig_alert="$FG[196]"
local lig_info="$FG[246]"
local lig_default="$FG[250]"
local lig_highlight="$FG[030]"
local lig_highlight2="$FG[073]"
local lig_warning="$FG[009]"

### PROMPT
function lig_repo_path() {
  git rev-parse --git-dir 2>/dev/null
}

function lig_status() {
  if [[ "$repo_path" != '.' && `git status -s 2> /dev/null` != "" ]];  then
    echo "${lig_alert}✗${lig_reset}"
  else
    echo "${lig_success}✔${lig_reset}"
  fi
}

function lig_last_status() {
  echo "%(?,${lig_success},${lig_alert})➤${lig_reset}"
}

function lig_current_branch() {
  if [ -n "${LIG_DANGEROUS_BRANCH}" ] && [ -n "$(git remote get-url origin | grep '${LIG_DANGEROUS_BRANCH}')" ]; then
    echo "${lig_alert}\uE0A0 $(git_current_branch)${lig_reset}"
  else
    echo "${lig_highlight2}\uE0A0 $(git_current_branch)${lig_reset}"
  fi
}

function lig_box_name {
  [ -f ~/.box-name ] && cat ~/.box-name || echo "${SHORT_HOST:-$HOST}"
}

function lig_root() {
  if [ ${UID} -eq 0 ]; then
    echo "${lig_alert}!${lig_reset}"
  fi
}

function lig_user() {
  local box=''
  local color="${lig_info}"
  local short_host="$(lig_box_name)"

  if [[ "${short_host}" != "${HOST}" ]]; then
    box="@$(lig_box_name)"
  fi
  if [ ${UID} -eq 0 ]; then
    color="${lig_alert}"
  fi
  if [[ -n "${box}" ]]; then
    echo "${color}[%n${box}]${lig_reset} "
  fi
}

function lig_git_path() {
  # keep only the part between the first / and . characters
  local project="${${$(current_repository)%.*}##*/}"
  local relative_path="$(git rev-parse --show-prefix)"

  echo "${lig_highlight2}\uE0A0 ${project} ${lig_info}${relative_path}${lig_reset}"
}

function lig_prompt() {
  local current_path='%~'
  if [ -n "$(git_current_branch)" ]; then
    current_path="$(lig_git_path)"
  fi

  echo "
$(lig_status) ${current_path} ${lig_highlight}\U231A%*${lig_reset}
$(lig_user)$(lig_root)$(lig_last_status) "
}

### RPROMPT
function lig_prompt_status() {
  echo "$(git_prompt_status) $(lig_current_branch)${lig_reset}"
}

function lig_last_commit() {
  if [[ "$(tput cols)" -lt 80 ]]; then
    echo " ${lig_info}${lig_reset}"
  else
    echo " ${lig_info}$(git log --pretty=format:"%h \"%s\"" -1 2> /dev/null)${lig_reset}"
  fi
}

function lig_rprompt() {
  if [ -n "$(git_current_branch)" ]; then
    echo "$(lig_prompt_status)$(lig_last_commit)"
  else
    echo "${lig_info}✖${lig_reset}"
  fi
}

PROMPT='$(lig_prompt)'
RPROMPT='$(lig_rprompt)'

ZSH_THEME_GIT_PROMPT_UNTRACKED="${lig_info}? "
ZSH_THEME_GIT_PROMPT_ADDED="${lig_success}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="${lig_warning}✹ "
ZSH_THEME_GIT_PROMPT_RENAMED="${lig_warning}➜ "
ZSH_THEME_GIT_PROMPT_DELETED="${lig_warning}✖ "
ZSH_THEME_GIT_PROMPT_STASHED="${lig_highlight}✭ "
ZSH_THEME_GIT_PROMPT_AHEAD="${lig_warning}🡑 "
ZSH_THEME_GIT_PROMPT_BEHIND="${lig_warning}🡓 "
ZSH_THEME_GIT_PROMPT_DIVERGED="${lig_alert}🡙 "
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="${lig_reset}"
ZSH_THEME_GIT_PROMPT_DIRTY="${lig_alert}✗"
ZSH_THEME_GIT_PROMPT_UNTRACKED="${lig_highlight}✭"
ZSH_THEME_GIT_PROMPT_CLEAN="${lig_success}✔"

