#!/bin/bash

source ~/.git_completion

function cd() {
    builtin cd $@
    export PS1='\h:\w\e[1;31m$(__git_ps1 "(%s)")\e[0m\$ '
}

