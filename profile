#!/bin/bash

# Profile file, run on login

export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"

[[ -f ~/.bashrc ]] && . ~/.bashrc

xset r rate 200 50
