# 依赖

有一些配置需要额外的依赖，这里跟随配置进行 添加

## Figlet

可以理解成字符 LOGO 吧，ASCII ART

> FIGlet - display large characters made up of ordinary screen characters

```
brew install figlet
```

## FZF

一个好用的模糊搜索工具

```
brew install fzf
```

## Ranger

虽然 `brew install ranger` 也可以安装，但是为了更好得通过 neovim 的 `:checkhealth`，还是用 pip 的方式来装吧：

```
pip3.8 install --user --upgrade ranger-fm
```