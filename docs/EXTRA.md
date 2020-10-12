# 补充信息

这里记录一些可能对开发有帮助，但是和 `vim` 关系不大的辅助工具。

## 在 Mac 中像 `vim` 一样操作 `pdf`

网上查了一下，貌似有两个选择，一个是 `mupdf`，一个是 `zathura`，试用之后决定用 `zathura`，因为 `mupdf` 安装之后效果并不理想，还有比较重的 `X11` 依赖。

具体安装可以参考：https://github.com/zegervdv/homebrew-zathura

```
brew tap zegervdv/zathura
brew install zathura
brew install zathura-pdf-poppler
```

然后还需要执行：

```
$ mkdir -p $(brew --prefix zathura)/lib/zathura
$ ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
```

## 在 Mac 中将左边的 `caps lock` 键，映射成 `esc`

是个软件，去这里下载：https://github.com/pqrs-org/Karabiner-Elements


## 在 Mac 中给软件添加一个类似于 `vim` 的 `leader`

当你需要打开一个软件的时候，通常都需要想一下，然后鼠标点击好几次，基于用 `Alfred` 这样的启动神器也还需要搜一下，这里我用了 `SpaceLauncher` 软件，用 `<space>` + 字母的方式启动一些常用软件。

这个软件是免费，不开源的，可以去这里下载：https://spacelauncherapp.com/

我常用的设置如下：

| key         | usage         |
|-------------|---------------|
| `<space>`+c | 打开 `VSCode` |
| `<space>`+d | 打开 `Dash`   |
| `<space>`+t | 打开 `iTerm`  |

建议不要一下子设置的太多，真的是最常用的才需要设置。

另外，这个软件的用法需要适应一下：长按空格，等待弹出悬浮窗，按字母（空格键不要放开）
