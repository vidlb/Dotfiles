#!/bin/bash
for f in $(find . -type f ! -path "*/.git/*" ! -path '*/deploy.sh'); do
    filepath="${f:2}"
    dirpath=$(dirname $filepath)
    if [ ! -d "$HOME/$dirpath" ]; then
        mkdir "$HOME/$dirpath" -p
    fi
    
    if [[ ! -e "$HOME/$filepath" || -L "$HOME/$filepath" ]]; then
        ln -fsv "$(pwd)/$filepath" "$HOME/$filepath"
    fi
done
