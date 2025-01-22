Github Markdown Simple Blog

1、打开[GitHub](https://github.com/) 注册

2、安装Git环境

MAC 安装：

mac打开终端可以输入`git --version` 查看版本，未安装mac会提示安装。

Windows安装：

```powershell
# windows 管理员权限打开powershell 输入以下命令
# 我是注释 以下是安装choco安装工具
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# 我是注释 以下是安装 git 开发版本库管理工具
choco install git -y
```

3、开启GitHub Pages

https://www.github-zh.com/getting-started/github-pages

4、GitHub的排版

[前言 |Jekyll • 简单、博客感知的静态网站](https://jekyllrb.com/docs/front-matter/)



当前时间：{{ date }}



想在GitHub画图展示，找到了神器mermaid，但是蛇皮的事情来了

mermaid的支持typora很棒，本地查看很好，GitHub也官方说明支持，readme文件展示毫无问题，但是经由GitHubPage发布为页面，啊哈，那就消失了，都是问题



Typora及Github Preview展示均异常，但是GitHub Pages渲染异常：

```mermaid
graph LR;
%%此处为注释
写一本书-->为什么写; 
写一本书-->怎么写;
写一本书-->写什么内容;
为什么写-->记录生活内容,不必什么内容都再次查找;
怎么写-->在本地使用typora编辑,然后发布为GitHub网页;
写什么内容-->想到什么写什么,相当于准备素材;
```

本地页面调试可用的html代码块：

<pre class="mermaid">
graph LR;
写一本书-->为什么写;
写一本书-->怎么写;
写一本书-->写什么内容;
为什么写-->记录生活内容,不必什么内容都再次查找;
怎么写-->在本地使用typora编辑,然后发布为GitHub网页;
写什么内容-->想到什么写什么,相当于准备素材;
</pre>
<hr>

顺便一说，原生mermaid的html页面渲染比typora的mermaid内置插件或者GitHub的preview好看！

组合示例（不想一张图搞两次,但是没成功）



有了图，我大概可以换一种组织文档内容的方式，用图描述整个博客，然后给它们加上点击的链接，这样简单易懂









<!-- 加载mermaid，以便GitHub page 展示mermaid -->

<script src="https://unpkg.com/mermaid@11.4.1/dist/mermaid.min.js"></script>
<!-- 兼容GitHub -->

<script>
mermaid.initialize({startOnLoad:true});
window.mermaid.init(undefined, document.querySelectorAll('.language-mermaid'));
</script>
