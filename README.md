## 终端切换成 zsh

```sh
$ brew install zsh
$ sudo sh -c "echo $(which zsh) >> /etc/shells"
$ chsh -s $(which zsh)
```

## 安裝 Oh My ZSH 下载配置文件 
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ef6/config/master/my-zsh/install.sh)"
```
termux 用这个
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ef6/config/master/my-zsh/install_in_termux.sh)"
```