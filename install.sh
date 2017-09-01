git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/junegunn/fzf.git ~/.zsh/plugins/fzf
~/.zsh/plugins/fzf/install --bin
git clone https://github.com/Treri/fzf-zsh.git ~/.zsh/plugins/fzf-zsh

if [ -e "~/.zshrc" ]; then
    mv ~/.zshrc ~/.zshrc.backup
fi
if [ -e "~/.zshenv" ]; then
    mv ~/.zshenv ~/.zshenv.backup
fi
ln -s ~/.zsh/.zshrc ~/.zshrc
ln -s ~/.zsh/.zshenv ~/.zshenv
