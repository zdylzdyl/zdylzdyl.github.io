---
title: '写Bug'
date: 2022-07-06 17:08:14
tags: [bug]
published: true
hideInList: false
feature: 
isTop: false
---
@[toc]

# 1、下载文件链接检查
遇到一个问题，返回的下载链接可能无法下载文件（GET请求链接），而我返回给前端的链接是不走我服务的链接，如果文件存在则可以下载，如果文件不存在对方服务器上，也能下载，但是下载的文件是0KB。

这就比较烦恼了，我想后端做个检查，OK的话就返回给前端，但是有个问题，如果文件大小过大，使用服务器去下载文件，把文件下载到内存，就浪费内存甚至还有OOM的风险，那么有什么办法不下载文件知道文件的大小呢？去对方服务上加个检查文件的接口也行(笑😀)。

这时候只好用Head请求了，先准备环境，在测试服务器上创建个1GB的文件和正常3MB的文件：

比如创建一个1GB的文件 `failocate -l 1GB test.tar`

测试请求代码如下：
```    
private static boolean checkFile(String url) throws IOException {
        //本次测试链接不需要重定向
        HttpURLConnection.setFollowRedirects(false);
        //打开链接
        HttpURLConnection connection = (HttpURLConnection) new URL(url).openConnection();
        //设置发送HEAD请求 实际不会返回请求体
        connection.setRequestMethod("HEAD");
        //设置超时事件
        connection.setReadTimeout(30_0000);
        connection.setConnectTimeout(30_0000);
        //输出请求体大小
        System.out.println(connection.getContentLength());
        return connection.getResponseCode() == HttpURLConnection.HTTP_OK;
    }
```
这样就可以愉快的请求文件，获取文件大小，但是不接受请求体啦，也就没有请求文件大小过大，OOM的风险啦。
PS: 组内网关不支持HEAD请求，最后导致生产事故啦
参考链接： https://stackoverflow.com/questions/19755016/