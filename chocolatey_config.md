# chocolatey 安装软件

```bat
# init 初始化安装
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


# install jetbrains toolbox jetbrains开发工具 Java开发必备，无需再一次次手动更新啦
choco install jetbrainstoolbox -y

# install dism++ windows系统管理，清理神器
choco install dismplusplus -y

# install edge 常用浏览器，好就好在右键翻译
choco install microsoft-edge -y

# install everything win下搜索神器，效率必备
choco install everything -y

# install sandboxie-plus 免费沙盘，安装垃圾软件必备
choco install sandboxie-plus.install -y

# install git 开发版本库管理工具
choco install git -y

# install git gitextensions git版本管理GUI工具
choco install gitextensions -y

# install openjdk (very slow) 下载太慢了，慢到几个小时装不完，除非走梯子
choco install openjdk -y

# install temurin8 (slow) 下载太慢了，但是还能忍受，十几分钟等待
choco install temurin8 -y

# choco install liberica8jdk (very slow) 下载太慢了，慢到几个小时装不完，除非走梯子
choco install liberica8jdk -y

# install golang 大概吧，有可能会用上GO
choco install golang -y

# install nginx  本地nginx服务 start nginx.exe nginx -s quit nginx -s stop 
choco install nginx -y

# mysql 本地开发数据库
choco install mysql -y

# memreduct win下内存管理神器，清理内存，然后放磁盘缓存
choco install memreduct -y

# node 前端开发依赖
choco install nodejs-lts -y

# install notepad++ 用得习惯了的记事本
choco install notepadplusplus -y

# install handbrake 视频压缩工具，虽然用不上就是了
choco install handbrake -y

# install typora 最好看的markdown编辑器，没有之一
choco install typora -y

# winrar 常用的压缩包工具，但是choco的自带广告 还是用7z吧，都一样
# choco install winrar -y

# cpu-z 打7z搜出来这个，但是也可以装
# choco install cpu-z -y

# choco install 7zip 免费的压缩工具
choco install 7zip -y

# choco install xmind 32位Java版本xmind，以前我不知道，现在我选择在markdown内写 mermaid，更好
# choco install xmind -y

# xmind-2020 mermaid下位替代，但是比32位Java版本xmind好，更漂亮
# choco install xmind-2020 -y

# ccleaner 可有可无的老牌清理软件，好处是他没有广告？
# choco install ccleaner -y

# cheatengine 大名鼎鼎的CE破解器，修改游戏运行内存数值
choco install cheatengine -y

# clash 代理软件
choco install clash-for-windows -y

# choco install dnspyex 修改游戏dll的软件，反编译dll使用，方便
choco install dnspyex -y

# choco install spacesniffer 磁盘空间查看工具，找出dism++清理不掉的大文件
choco install spacesniffer -y

# choco install ollama 一个方便的大模型前端
choco install ollama -y
```

