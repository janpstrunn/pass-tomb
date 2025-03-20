#!/usr/bin/env bash

_pass_tomb_list() {
  local passwords
  IFS=$'\n' read -d '' -r -a passwords < <(ls)
  COMPREPLY=($(compgen -W "${passwords[*]}" -- "${COMP_WORDS[COMP_CWORD]}"))
}

_pass_tomb_commands() {
  local commands="dig import open help version"
  COMPREPLY=($(compgen -W "$commands" -- "${COMP_WORDS[COMP_CWORD]}"))
}

_pass_tomb_completion() {
  local cur prev
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD - 1]}"

  case "$cur" in
  dig | import | open | help | version)
    _pass_tomb_commands
    return
    ;;
  esac

  case "$prev" in
  open)
    _pass_tomb_list
    return
    ;;
  esac

  if [[ $COMP_CWORD -eq 1 ]]; then
    _pass_tomb_commands
  fi
}

complete -F _pass_tomb_completion pass-tomb
