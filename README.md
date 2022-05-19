# Mobaxterm

#### 介绍
Mobaxterm环境配置

#### 同步说明

1.  同步路径：<安装目录>\Configsync
2.  配置说明：
    * vimrc：VIM配置文件
    * MobaXterm.ini：Mobax全局配置文件
3.  执行操作：
    ```git
    // git clone
    cd C:\Users\Administrator\AppData\Roaming\Code
    git clone -b vscode git@gitee.com:htp168/configsync.git User
    
    // git push
    cd User
    git push -u origin vscode
    
    // git pull
    cd User
    git pull -f origin vscode
    
    ```
4.  补充：
    * 将MobaXterm.ini放到MobaXterm程序安装目录
    * 编辑vimrc文件，将内容复制替换slash/usr/share/vim/vimrc文件（切勿粘贴覆盖原文件）

#### VIM快捷键
##### 普通模式
*  i: 方向键向上 => up
*  j: 方向键向左 => left
*  k: 方向键向下 => down
*  l: 方向键向右 => right
*  fs: 保存 => :w
*  ss: 强制保存 => :w!
*  fq: 不保存退出 => :q
*  qq: 强制不保存退出 => :q!
*  wq: 强制保存并退出 => :wq!
*  zz: 强制保存并退出 => ZZ
*  fe: 重新加载 => :e
*  ee: 强制重新加载 => :e!
*  fn: 切换下一个文件 => :bn
*  fp: 切换上一个文件 => :bp
*  Ctrl+k: 向下滚动一行 => Ctrl+j
*  Ctrl+i: 向上滚动一行 => Ctrl+k
*  a: 切换上一个文件 => :bp
*  A: 切换上一个文件 => :bp
*  o: 切换上一个文件 => :bp
*  O: 切换上一个文件 => :bp
*  s: 切换上一个文件 => :bp
*  S: 切换上一个文件 => :bp
*  r: 切换上一个文件 => :bp
*  G: 切换上一个文件 => :bp
*  gg: 切换上一个文件 => :bp

##### 插入模式
1. 内容一
2. 内容二
3. 内容三

##### 命令模式
1. 内容一
2. 内容二
3. 内容三

##### 视图模式
1. 内容一
2. 内容二
3. 内容三