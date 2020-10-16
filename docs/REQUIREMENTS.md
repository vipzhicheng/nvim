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

## ripgrep

### Mac

```
brew install ripgrep
```

### Centos 7/8

```
dnf install ripgrep
```

## the_silver_searcher

### Mac

```
brew install the_silver_searcher
```

### Centos 7/8

```
dnf install the_silver_searcher
```

## ctags

为了让一些tag类的插件工作，这里主要是指 `Vista`，需要安装ctags，并且不是 XCode 自带的 `ctags`，安装[插件文档](https://github.com/liuchengxu/vista.vim#compile-ctags-with-json-format-support)，安装方式如下：

### Mac

```
sudo mv /usr/local/bin/ctags /usr/local/bin/ctags.origin # 原来的也不敢删，万一还有用呢
brew tap universal-ctags/universal-ctags
brew install --with-jansson --HEAD universal-ctags/universal-ctags/universal-ctags
```

### Ubuntu

Ubuntu的场景还没遇到过，先记录一下：

```
# install libjansson first
$ sudo apt-get install libjansson-dev

# then compile and install universal-ctags.
#
# NOTE: Don't use `sudo apt install ctags`, which will install exuberant-ctags and it's not guaranteed to work with vista.vim.
#
$ git clone https://github.com/universal-ctags/ctags.git --depth=1
$ cd ctags
$ ./autogen.sh
$ ./configure
$ make
$ sudo make install
```

## xkbswitch

很多时候国内的开发者开发时还是要在代码当中输入中文的，但是还需要回到 `normal` 模式去做各种移动和跳转，这时如果还保留在中文输入发，快捷键绑定就不好用了，以下是这个问题的解决方案。

1. `git clone https://github.com/myshov/xkbswitch-macosx.git`
2. `cp xkbswitch-macosx/bin/xkbswitch /usr/local/bin`
3. `git clone https://github.com/myshov/libxkbswitch-macosx.git`
4. `cp libxkbswitch-macosx/bin/libxkbswitch.dylib /usr/local/lib`
5. 安装插件：https://github.com/lyokha/vim-xkbswitch

虽然插件的文档很长，不过根据测试，0配置就能获得我们想要的效果了。
