#!/bin/bash

function mynd(){
	if [ "$1" = "update" ]; then
		cd "$HOME/mynd"
		git pull
	fi

	if [ "$1" = "build" ]; then
		if [ $# -eq 3  ]; then
			gh_token=$(<gh_token.txt)
			docker build --build-arg GH_TOKEN=$gh_token -t $2 . 
			return
		else
			echo "The build action expects 1 arguments" 
			return
		fi
	fi

}


