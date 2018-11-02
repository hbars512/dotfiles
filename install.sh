#!/bin/bash -
#===============================================================================
#
#          FILE: install.sh
#
#         USAGE: ./install.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/02/2018 10:45:44 AM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Copiando .virmc
echo '* Actualizando vimrc...'
cd ~
if [ -f .vimrc ];
then
   mv .vimrc .vimrc.bak
fi
cd .bvtconfig
cp .vimrc ~/
echo '- vimrc actualizado'

# Copiando .bashrc
echo '* Actualizando bashrc...'
cd ~
if [ -f .bashrc ];
then
   mv .bashrc .bashrc.bak
fi
cd .bvtconfig
cp .bashrc ~/
echo '- bashrc actualizado'

# Copiando .tmux.conf
echo '* Actualizando tmux.conf...'
cd ~
if [ -f .tmux.conf ];
then
   mv .tmux.conf .tmux.conf.bak
fi
cd .bvtconfig
cp .tmux.conf ~/
echo '- tmux.conf actualizado'
