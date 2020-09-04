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

## 许可协议

MIT