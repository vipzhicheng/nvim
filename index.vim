" 设置运行时目录
set runtimepath+=~/.config/vimrc

" 加载运行时目录中的文件
runtime basic.vim

" 加载本地个性化配置
try
runtime local.vim
catch
endtry