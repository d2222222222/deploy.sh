echo "After the system reboots there is a file named helpme.Open it with lolcat helpme."
sleep 10
clear
sudo pacman -Syu
sudo pacman -S lsd yazi neovim vi zip unzip firefox wget htop gcc python3 lolcat
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
unzip Hack.zip -d Hack
mkdir -p /usr/local/share/fonts
sudo mv Hack/*.ttf /usr/local/share/fonts/
sudo fc-cache -f -v
cd
rm -rf ~/.config/nvim/
git clone https://github.com/LazyVim/starter ~/.config/nvim/
git clone https://github.com/d2222222222/deploy/
rm -rf ~/.Xresources
rm -rf ~/.config/i3/config
rm -rf ~/.config/nvim/init.lua
cd deploy
mv config ~/.config/i3/config
mv .Xresources ~/.Xresources
mv init.lua ~/.config/nvim/init.lua
mv .bashrc ~/.bashrc
cd
rm -rf deploy
rm -rf Hack.zip
git clone https://github.com/d2222222222/yayinstall
cd yayinstall
bash yayinstall
cd
yay -S pfetch pipes.sh tgpt
xrdb -merge ~/.Xresources
source ~/.bashrc
clear
pfetch
sleep 5
sudo reboot
