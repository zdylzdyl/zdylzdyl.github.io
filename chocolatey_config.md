# chocolatey 安装软件

```bat
# init
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


# install jetbrains toolbox
choco install jetbrainstoolbox -y

# install dism++
choco install dismplusplus -y

# install edge
choco install microsoft-edge -y

# install everything
choco install everything -y

# install sandboxie-plus
choco install sandboxie-plus.install -y

# install git
choco install git -y

# install git gitextensions
choco install gitextensions -y

# install openjdk (very slow)
choco install openjdk -y

# install temurin8 (slow)
choco install temurin8 -y

# choco install liberica8jdk (very slow)
choco install liberica8jdk -y

# install golang
choco install golang -y

# install nginx start nginx.exe nginx -s quit nginx -s stop
choco install nginx -y

# mysql
choco install mysql -y

# memreduct
choco install memreduct -y

# node
choco install nodejs-lts -y

# install notepad++
choco install notepadplusplus -y

# install handbrake
choco install handbrake -y

# install typora
choco install typora -y

# winrar
# choco install winrar -y

# cpu-z
choco install cpu-z -y

# choco install 7zip
choco install 7zip -y

# choco install xmind
# choco install xmind -y

# xmind-2020
# choco install xmind-2020 -y

# ccleaner
choco install ccleaner -y

# cheatengine
choco install cheatengine -y

# clash
choco install clash-for-windows -y

# choco install dnspyex
choco install dnspyex -y

# choco install spacesniffer
choco install spacesniffer -y
```

