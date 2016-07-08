rm -rf ~/.Rpackages
mkdir ~/.Rpackages
rm ~/.Rprofile
ln -sfn ~/src/help/.Rprofile ~/.Rprofile
rm ~/.Renviron
ln -sfn ~/src/help/.Renviron ~/.Renviron
rm ~/.Rinstall.r
ln -sfn ~/src/help/.Rinstall.r ~/.Rinstall.r
