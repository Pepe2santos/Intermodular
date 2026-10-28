#!/bin/bash

    function create_repo {
        # Si el repositorio existe lo elimina
        if [ -d $1 ]; then
            rm -rf $1
        fi
        mkdir -p "$1"
        cd $1
    }
clear

    if [ -z "$1" ]; then
        echo "¡Debe introducir el nombre del repositorio!"
        exit 1
    fi


    create_repo "$1"

    git init

    git branch -m main

    echo "# Ramas en Git" > README.md

    git add README.md

    git commit -m "Commit Inicial"

    git lga