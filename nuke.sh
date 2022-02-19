#!/usr/bin/zsh


if [ $# -eq 0 ]
then
    echo "No directory specified..."
else
    echo "Nuke directory ${1} ? yes/no"
    read answer
    case $answer in
        yes )
           /usr/bin/rm -rf $1
            ;;
        * )
            echo "Aborted..."
            ;;
    esac
fi

