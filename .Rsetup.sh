rm -rf ~/.Rpackages
mkdir ~/.Rpackages
rm ~/.Rprofile
ln -sfn ~/src/help/.Rprofile ~/.Rprofile
rm ~/.Renviron
ln -sfn ~/src/help/.Renviron ~/.Renviron
rm ~/.Rintall.r
ln -sfn ~/src/help/.Rinstall.r ~/.Rinstall.r
