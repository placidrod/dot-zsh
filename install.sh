git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/changyuheng/zsh-interactive-cd.git ~/.zsh/plugins/zsh-interactive-cd

if [ -e "~/.zshrc" ]; then
    mv ~/.zshrc ~/.zshrc.backup
fi
if [ -e "~/.zshenv" ]; then
    mv ~/.zshenv ~/.zshenv.backup
fi
ln -s ~/.zsh/.zshrc ~/.zshrc
ln -s ~/.zsh/.zshenv ~/.zshenv
