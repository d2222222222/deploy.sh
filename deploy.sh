echo "be prepared to read you have 30 seconds"
sleep 5
echo "yazi is your file manager,you have firefox,htop,c and python.my custom neovim,i3 and Xterm complete with a font that has icons for stuff like showing filetypes in yazi.when you are in yay downloads you need to do A for witch packages packages and N for showing diffs read what comes up so u dont fuck it.pfetch instead of neofetch,will reboot at the end.."
sleep 30
clear
sudo pacman -S lsd yazi neovim zip unzip firefox wget htop gcc python3 
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
cd
rm -rf deploy
rm -rf Hack.zip
git clone https://github.com/d2222222222/yay-installer
cd yayinstaller
bash yayinstall
cd
yay -S pfetch
yay -S pipes.sh
clear
pfetch
sleep 5
sudo reboot
