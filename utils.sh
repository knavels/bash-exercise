#!/bin/bash

function log_message (){
    lvl=${2:-1}
    prefix=$(seq -s= $((lvl*5+1)) | tr -d '[:digit:]')
    [ "$lvl" -gt 0 ] && prefix="${prefix} "
    message="${prefix}$1 "
    echo "$message$(seq -s= $(($(tput cols)-${#message}-1))|tr -d '[:digit:]')"
}

function sanitize_string (){
    CLEAN=${1//_/}
    # next, replace spaces with underscores
    CLEAN=${CLEAN// /_}
    # now, clean out anything that's not alphanumeric or an underscore
    CLEAN=${CLEAN//[^a-zA-Z0-9_]/}
    # finally, lowercase with TR
    echo -n $CLEAN | tr A-Z a-z
}

