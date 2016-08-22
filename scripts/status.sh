#!/bin/bash
shopt -s expand_aliases

alias svn=~/dotfiles/scripts/svn-color.py

clear

if [ -z "$1" ]
then
	branch="trunk"
elif [ "$1" = "rp" ]
then
	branch="branches/rapidproduction"
elif [ "$1" = "rs" ]
then
	branch="branches/rapidstage"
elif [ "$1" = "ss" ]
then
	branch="branches/standardstage"
else
	echo "Valid arguments include: rp, rs, and ss"
	exit 1
fi

#svn status ~/svn/PsCore/$branch

repos=(
    'PsCore'
	'PsCoreCommon'
	'PsLibraries'
	'PsCoreDbScripts'
	'Mounts'
)
count=0
while [ "x${repos[count]}" != "x" ]
do
	echo -e "\n"
	echo "=============================="
	echo "~/svn/${repos[count]}/$branch"
	echo -e "=============================="
    svn status ~/svn/${repos[count]}/$branch
    count=$(( $count + 1 ))
done
