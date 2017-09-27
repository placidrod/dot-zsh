# dot-zsh
Personal On-My-Zsh customs

## Usage
### Clone to ~/.zsh folder
```git clone https://github.com/ouchxp/dotzsh.git ~/.zsh```

### Install plugins and create links for .zshrc and .zshenv
```sh ~/.zsh/install.sh```

### Install dependencies
```
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

##### Alternative for MacOS
```
brew install pyenv
brew install fzf
$(brew --prefix fzf)/install
```