# 安装

## 安装 neovim

### Mac

```
brew install neovim
```

### CentOS 7/8

由于部分插件对 `neovim` 的版本有要求，所以不安装包管理工具里的 `neovim` 而是安装最新稳定的二进制

```bash
$ # prepare
$ dnf install curl
$ # for the sake of running appimage:
$ dnf install fuse-libs
$ # get appimage binary
$ curl -o /usr/local/bin/nvim -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
$ # to get the nightly version instead:
$ #curl -o /usr/local/bin/nvim -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
$ # make it executable
$ chmod u+x /usr/local/bin/nvim
```

## 安装 npm neovim 

推荐先安装 `nvm`

```
npm i -g neovim
```

## 安装 Ruby 环境

### Mac

这里也是使用 brew 来安装ruby，内置的版本太低了，为了减少冲突，我把之前安装的rvm给卸载了

```
sudo rm -rf ~/.rvm ~/.rvmrc
```

然后安装 `Ruby`

```
brew install ruby
```

安装好以后需要手动加到环境变量

```
echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.zshrc
```

然后是换源：

```
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
```

再然后安装 `neovim` 依赖

```
gem install neovim
```

## CentOS

TBD

## 安装 Python 环境

貌似可以在 python2 和 python3 里选择，我先搞定 python3 再说

### Mac

#### 先安装 brew python

我的电脑默认自带了3.2，要求是3.3+，升级自带python3会比较麻烦，直接安装brew版本的

```
brew install python3
brew link --overwrite python@3.8 # 重建一堆符号链接，不要紧，反正内置那一套都不要了
```

#### 安装 neovim 依赖

改名啦，以前叫 `neovim`

```
python3 -m pip install --user --upgrade pynvim
pip3.8 install --user --upgrade pynvim # 或，由于Mac本地安装安装了xcode, pip3 不是这里需要得
```

有些插件依赖 `neovim-remote`，这里是 `Floaterm` 依赖

```
pip3.8 install neovim-remote
```

### CentOS

最后进 `nvim` 执行 `:checkhealth` 看看
