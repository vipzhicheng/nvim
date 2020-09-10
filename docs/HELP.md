# 帮助信息

## 内置快捷键

### Normal Mode

* `<C-o>`: 可以去前一个 jump 位置
* `<C-i>`: 可以去后一个 jump 位置
* `gf`: Go to file，跳转到另一个文件
* `C-a` 和 `C-x` 可以对光标处的数字进行加减

### Visual Mode

* `viw`: 选中当前光标下的单次
* `U`: 把当前选中的字符转换为大写
* `u`: 把当前选中的字符转换为小写

## 调试问题

```
vim -V20 2>&1 | tee logfile 
```

或者直接

```
vim -V20logfile
```

会在当前目录找到一个 logfile，打开就可以看到日志了。