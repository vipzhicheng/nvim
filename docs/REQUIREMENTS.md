# 依赖

有一些配置需要额外的依赖，这里跟随配置进行 添加

## Figlet

可以理解成字符 LOGO 吧，ASCII ART

> FIGlet - display large characters made up of ordinary screen characters

### Mac

```
brew install figlet
```

### CentOS 7/8

```
dnf install figlet
```

## FZF

一个好用的模糊搜索工具，默认在自动安装插件以后会自动帮助安装 `fzf`，如果没有的话，也可以手动安装。

### Mac

```
brew install fzf
```

### Git

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Ranger

虽然 `brew install ranger` 也可以安装，但是为了更好得通过 neovim 的 `:checkhealth`，还是用 pip 的方式来装吧：

### pip

```
pip3.8 install --user --upgrade ranger-fm
```

### Git

```
git clone https://github.com/ranger/ranger.git --depth=1
cd ranger
sudo make install
```