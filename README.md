# Sublime Text

#### 介绍
Sublime Text环境配置

#### 同步说明

1.  同步路径：
    * Windows <安装目录>\Data\Packages\User
    * Ubuntu ~/.config/sublime-text-3/Packages/User

2.  配置说明：
    * Default (Windows).sublime-keymap：
    * Git.sublime-build：
    * Git.sublime-settings：
    * Java.sublime-build：
    * JavaScript.sublime-build：
    * Package Control.sublime-settings：
    * Package Control.user-ca-bundle：
    * Preferences.sublime-settings：
    * Python3.sublime-build：
    * Snippet.sublime-completions：    
    * Vintage.sublime-package：sublime中使用vim，更改快捷键映射
    * Vintage.default.sublime-package：sublime中使用vim系统默认快捷键
    * …… 后续补充

3.  执行操作：
    ```git
    // git clone
    cd <安装目录>\Data\Packages
    git clone -b sublime git@gitee.com:htp168/configsync.git User
    
    // git push
    cd User
    git push -u origin sublime
    
    // git pull
    cd User
    git pull -f origin sublime
    
    ```

4.  补充：
    * 将Vintage.sublime-package放到sublime text<安装目录>\packages下