# VSCode

#### 介绍
VSCode环境配置

#### 同步说明

1.  同步路径：C:\Users\Administrator\AppData\Roaming\Code\User

2.  配置说明：
    * extensions.json：已安装的扩展插件配置文件
    * keybindings.json：快捷键配置文件
    * settings.json：VSCode全局配置文件
    * …… 后续补充

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