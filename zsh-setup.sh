#!/bin/bash

#================================================================
#   Copyright (C) 2020 Hisome Ltd. All rights reserved.
#   
#   文件名称：zsh-setup.sh
#   创 建 者：wenxp@hisome.com
#   创建日期：2020年03月26日
#   描    述：
#
#================================================================
echo "---now prepare zsh ---- "
tar xf oh-my-zsh.tgz 

echo "---step 1 compile zsh ---- "
cd .zsh-5.8
mkdir install
INSTALLDIR=$(pwd)
./configure --prefix=${INSTALLDIR}/install;make install
cd -
echo "---step 1 compile zsh over ---- "

exit 0

echo "---step 2 add envirenment ---- "
ln -sf ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
echo "export PATH=\${PATH}:${INSTALLDIR}/install/bin/" >> ~/.bashrc
echo "exec ${INSTALLDIR}/install/bin/zsh -l" >> ~/.bashrc
source  ~/.bashrc
echo "---step 2 add envirenment over ---- "
