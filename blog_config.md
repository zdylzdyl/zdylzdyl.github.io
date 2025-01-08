<!-- 加载mermaid，以便GitHub page 展示mermaid -->

<script src="https://unpkg.com/mermaid@11.4.1/dist/mermaid.min.js"></script>

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

