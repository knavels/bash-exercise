#!/bin/bash

function log_message (){
    lvl=${2:-1}
    prefix=$(seq -s= $((lvl*5+1)) | tr -d '[:digit:]')
    [ "$lvl" -gt 0 ] && prefix="${prefix} "
    message="${prefix}$1 "
    echo "$message$(seq -s= $(($(tput cols)-${#message}-1))|tr -d '[:digit:]')"
}

