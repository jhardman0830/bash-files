#!/bin/bash

shopt -s expand_aliases
alias svn=~/dotfiles/scripts/svn-color.py

clear
echo "SVN updates running..."
echo "=================================================="
echo -e "        ----- SVN updating PsCore... -----"
echo "--------------------------------------------------"
svn update ~/svn/PsCore
echo "=================================================="
echo -e "     ----- SVN updating PsCoreCommon... -----"
echo "--------------------------------------------------"
svn update ~/svn/PsCoreCommon
echo "=================================================="
echo -e "      ----- SVN updating PsLibraries... -----"
echo "--------------------------------------------------"
svn update ~/svn/PsLibraries
echo "=================================================="
echo -e "    ----- SVN updating PsCoreDbScripts... -----"
echo "--------------------------------------------------"
svn update ~/svn/PsCoreDbScripts
echo "=================================================="
echo -e "        ----- SVN updating Mounts... -----"
echo "--------------------------------------------------"
svn update ~/svn/Mounts
echo "=================================================="
echo -e "SVN updates completed.\n"
