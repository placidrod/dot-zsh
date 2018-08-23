git clone https://github.com/zplug/zplug.git ~/.zplug
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
