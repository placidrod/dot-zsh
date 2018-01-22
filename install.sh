git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/changyuheng/zsh-interactive-cd.git ~/.zsh/plugins/zsh-interactive-cd
git clone https://github.com/changyuheng/fz.git ~/.zsh/plugins/fz

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.backup
fi
if [ -f ~/.zshenv ]; then
    mv ~/.zshenv ~/.zshenv.backup
fi
if [ ! -f ~/.z ]; then
    touch ~/.z
fi
ln -s ~/.zsh/.zshrc ~/.zshrc
ln -s ~/.zsh/.zshenv ~/.zshenv
