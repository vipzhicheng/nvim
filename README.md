# 私人定制 vimrc

用别人的 `vim` 配置总是不能很好的掌握，还是自己攒一个吧，在攒的过程中学习和理解。

## 使用方式

假设刚安装 `vim` 还没有进行任何个性化配置。

```
git clone https://github.com/vipzhicheng/vimrc.git ~/.config/vimrc
```

然后编辑 `~/.vimrc` 文件，添加

```
source ~/.config/vimrc/index.vim
```

## 更新

```
cd ~/.config/vimrc
git pull -r
```

## 定制

可以在 `.vimrc` 文件的下方定制，也可以在 `~/.config/vimrc/local.vim` 中定制。

## 使用 `neovim`

尝试兼容 `neovim`，使用 `brew isntall neovim` 安装，然后编辑 `~/.config/nvim/init.vim`，添加

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/vimrc/index.vim
```
刚启动时发现 neovim 有一些独有依赖，一次解决

### 安装 npm neovim 

```
npm i -g neovim
```

### 安装 Ruby 环境

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

### 安装 Python 环境

貌似可以在 python2 和 python3 里选择，我先搞定 python3 再说

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
```

最后进 `nvim` 执行 `:checkhealth` 看看

## 项目使用方式

**请不要** 直接使用本项目，推荐你 **Fork** 本项目，然后所有配置统统注释，再逐条打开，验证每一条的作用，以及你是否感兴趣，删掉你不感兴趣的，加上你从别处学来的，最终形成你自己的配置。

## 贡献

本项目是个人项目，原则上不接受 `PR`，但是有一种情况例外，就是你打算教我一些技巧，我不是 `vim` 高手，期待大家的指点，如果有 `PR`，我可能是参考之后只取我认为对我有用的。

## 许可协议

MIT