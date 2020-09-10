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

## 升级

```
cd ~/.config/vimrc
git pull -r
```

## 定制

在 `~/.config/vimrc/local.vim` 中定制私有配置，不影响升级。

## 项目使用方式

**请不要** 直接使用本项目，推荐你 **Fork** 本项目，然后所有配置统统注释，再逐条打开，验证每一条的作用，以及你是否感兴趣，删掉你不感兴趣的，加上你从别处学来的，最终形成你自己的配置。

## 贡献

本项目是个人项目，原则上不接受 `PR`，但是有一种情况例外，就是你打算教我一些技巧，我不是 `vim` 高手，期待大家的指点，如果有 `PR`，我可能是参考之后只取我认为对我有用的。

## 更多文档参考

* docs/HELP.md 记录一些使用心得，文档里都有，这里是按照我学会的顺序来维护的，不成体系
* docs/INSTALL.md 安装 neovim 和一些底层依赖（npm/ruby/python）
* docs/REQUIREMENTS.md 一些第三方依赖的安装方式（figlet/fzf/ranger/...）

## 许可协议

MIT
