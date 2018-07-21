mkdir -p ~/.vim/.config/Code
rsync -r  ~/.config/Code/User ~/.vim/.config/Code --exclude='*workspaceStorage*'
rsync -r ~/.config/terminator ~/.vim/.config

