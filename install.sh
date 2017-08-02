#!/usr/bin/env bash

# Downloads images from Irasutoya (following URLs may be wrong...)
curl 'http://2.bp.blogspot.com/-hsvuEiPqeyY/WWXW5ORhlnI/AAAAAAABFdY/942RrVc-tjERBAtvH8uzK93-ojFrV2hOQCLcBGAs/s800/fire2_blue.png' > images/fire2-blue.png
curl 'http://1.bp.blogspot.com/-eIcaL1889ss/WWXW5NBVlbI/AAAAAAABFdU/Zv_KlStfsrsNX5-w_pbYWn_QeF_xjQ3-gCLcBGAs/s800/fire1_red.png' > images/fire1-red.png
curl 'http://4.bp.blogspot.com/-iSOkRYYi51s/WWXW6FIxL4I/AAAAAAABFdo/pFGgJkTiO70uan2Udz0MqjafwHB_BDnaACLcBGAs/s800/fire6_purple.png' > images/fire6-purple.png

# Sets paths where to copy the files
TEXMF=$(kpsewhich -var-value TEXMFLOCAL)
TEXMF=${TEXMF%%:*}
PATH_FONTNA=$TEXMF/fonts/truetype/public/fontna/
PATH_THEMES=$TEXMF/tex/latex/beamer/themes/
PATH_IRASUTOYA=$TEXMF/tex/latex/beamer/art/irasutoya

# Copies the files
mkdir -p $PATH_FONTNA
cp fonts/07ReallyScaryMinchotai.ttf $PATH_FONTNA/

mkdir -p $PATH_THEMES/color/
cp theme/beamercolorthemeScaryFire.sty $PATH_THEMES/color/
mkdir -p $PATH_THEMES/font/
cp theme/beamerfontthemeScaryFire.sty $PATH_THEMES/font/
mkdir -p $PATH_THEMES/inner/
cp theme/beamerinnerthemeScaryFire.sty $PATH_THEMES/inner/
mkdir -p $PATH_THEMES/outer/
cp theme/beamerouterthemeScaryFire.sty $PATH_THEMES/outer/
mkdir -p $PATH_THEMES/theme/
cp theme/beamerthemeScaryFire.sty $PATH_THEMES/theme/

mkdir -p $PATH_IRASUTOYA
cp images/fire*.png $PATH_IRASUTOYA/
cp images/fire*.bb $PATH_IRASUTOYA/

# Update ls-R (index files for LaTeX)
mktexlsr
