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

## 项目使用方式

**请不要** 直接使用本项目，推荐你 **Fork** 本项目，然后所有配置统统注释，再逐条打开，验证每一条的作用，以及你是否感兴趣，删掉你不感兴趣的，加上你从别处学来的，最终形成你自己的配置。

## 贡献

本项目是个人项目，原则上不接受 `PR`，但是有一种情况例外，就是你打算教我一些技巧，我不是 `vim` 高手，期待大家的指点，如果有 `PR`，我可能是参考之后只取我认为对我有用的。

## 许可协议

MIT
