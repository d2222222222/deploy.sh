rm -rf deploy
sudo pacman -S lsd yazi neofetch neovim
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
#git clone https://github.com/d2222222222/yayinstall
#cd yayinstall
#bash yayinstall
#cd
