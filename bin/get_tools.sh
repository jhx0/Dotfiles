#!/bin/sh

cd $HOME/bin

echo "[INFO] Getting tools..."

git clone https://github.com/jhx0/booky.git
chmod +x booky/booky

git clone https://github.com/jhx0/pymuc.git
chmod +x pymuc/pymuc.py

git clone https://github.com/rilysh/cafe.git
chmod +x cafe/cafe

git clone https://github.com/rilysh/cpuc.git

git clone https://github.com/rilysh/bsdfetch-sh
chmod +x bsdfetch-sh/bsdfetch

git clone https://github.com/rilysh/whatip.git

go install github.com/boyter/scc/v3@latest

git clone https://github.com/cdemoulins/pamixer.git

git clone https://github.com/anhsirk0/fetch-master-6000.git
chmod +x fetch-master-6000/fm6000.pl

git clone https://github.com/gentoo-btw/ramfetch.git
chmod +x ramfetch/ramfetch

git clone https://gitlab.com/jallbrit/cbonsai.git

git clone https://github.com/pipeseroni/pipes.sh.git

git clone https://github.com/kernelslacker/x86info.git

go install github.com/CondensedMilk7/countryfetch/cmd/countryfetch@latest

git clone https://github.com/kiwimoe/dii.git

git clone https://github.com/stuartlangridge/magnus.git

git clone https://github.com/jhx0/net-utils.git

git clone https://github.com/TheDarkBug/uwufetch.git

git clone https://github.com/rilysh/reex.git

git clone https://github.com/Duncaen/OpenDoas.git

echo "[OK] Done!"
