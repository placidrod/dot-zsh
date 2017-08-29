if [ -e "~/.zshrc" ]; then
    mv ~/.zshrc ~/.zshrc.backup
fi
if [ -e "~/.zshenv" ]; then
    mv ~/.zshenv ~/.zshenv.backup
fi
ln -s ~/.zsh/.zshrc ~/.zshrc
ln -s ~/.zsh/.zshenv ~/.zshenv
