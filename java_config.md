---
title: '函数式编程笔记'
date: 2021-01-13 16:42:10
tags: [Java]
published: true
hideInList: false
feature: 
isTop: false
---
# 函数式编程笔记

[TOC]
@[TOC]

## 一、认识

开始提问：

> 什么是函数？

是被称为函数定义域（function domain）的源集（source set ）和被称为函数陪域（也nction codomain ）的目标集（target set ）之间的关系。

函数:一个数集映射成另一个值数集的方法

> 什么是函数式编程？



需要接收参数返回确定值，不修改参数。



- 它是独立的。它并不依赖于任何外部的设备来工作。 你可以在任何上下文中使用它一一你需要做的一切就是提供一个有效的参数。
- 它是确定的，意味着相同的参数总是返回相同的结果。在引用透明的代码中，不会有意外发生。它可能返回一个错误的结果，可至少结果对于相同的参数而言是绝对不会变化的。
- 它绝对不会抛出任何种类的 Exceptio口。它可能抛出错误，例如OOME( out-of-memory error，即内存耗尽）或是 SOE(stack-overflow error， 即堆栈溢出），但是这些错误表示代码有 bug，并不是作为程序员的你或是你 API的用户应该处理的（除了让应用程序崩溃井最终修复 bug ）。任何时候它都不会导致其他代码意外失败。例如，它不会改变参数或是外界的数据， 从而导致调用者发现自己的数据过期或者并发访问异常。
- 它不会由于外部设备（数据库、文件系统或网络）不可用、太慢或坏掉而崩溃。





```java
//发送请求
HttpUtil.get("http://oa.tansun.com.cn:20080/oa/oalogin.jsp", 100);
HttpUtil.get("http://oa.tansun.com.cn:20080/oa/captcha", 100);
```



```java
//虚拟线程JDK21  传入Runnable实例并立刻运行:
Thread vt = Thread.startVirtualThread(() -> {
    System.out.println("Start virtual thread...");
    Thread.sleep(10);
    System.out.println("End virtual thread.");
});
```





```java
```







```java
```





```java
```







```java
```



```java
```



netsata -a 查看所有链接的 ip
tcpdump 查看所有请求
