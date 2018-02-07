## 终端切换成 zsh
> `brew install zsh`

> `chsh -s zsh`

## 下载配置文件 
```
curl -fsSL https://raw.githubusercontent.com/ef6/config/master/my-zsh/zshrc -o .zshrc &&
git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh &&
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions &&
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
```
