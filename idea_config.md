---
title: 'Idea帮助指南'
date: 2020-02-24 19:28:58
tags: [idea]
published: true
hideInList: false
feature: http://www.debug8.com/statics/uploads/2019/12/31/1577782816222512.png
isTop: false
---
# IntelliJ IDEA Config

[Toc]

## 1. [IntelliJ IDEA](https://www.jetbrains.com/idea/)

![idea](https://www.jetbrains.com/idea/img/overview-heading-screenshot.png)

> Github 入门通识：https://github.com/judasn/IntelliJ-IDEA-Tutorial

### 1.启动优化

64位机器修改idea64.exe.vmoptions，32位机器修改类似vmoptions文件即可，内存4GB机器无须修改，如下为16GB机器内存方案

```vmoptions
# 程序启动时占用内存大小。jvm初始化大小为1G
-Xms1g
# 程序运行期间最大可占用的内存大小。jvm最大大小为2G   -Xmx2g
-Xmx2054m
# 用于设置Code Cache大小，JIT编译的代码都放在Code Cache中，若Code Cache空间不足则JIT无法继续编译，并且会去优化，比如编译执行改为解释执行，由此，性能会降 可用默认不需要修改
-XX:ReservedCodeCacheSize=512m
# 添加作者信息
-Duser.name=zdylzdyl
```

### 2.新项目默认设置

idea的Setting是关于当前项目的设置，新项目（所有项目的设置）及新项目结构设置是不受Setting设置影响的，为了避免每次新建项目重新进行相同的项目设置，需要调整好idea的默认设置。

#### 2.1 Structure For New Projects

操作：File->Other Settings->Structure For New Projects

新建项目的默认结构设置，选择好默认JDK为JDK1.8，选择项目语言级别为8.其他无须设置。

#### 2.2 Settings For New Projects

操作：File->Other Settings->Settings For New Projects

中文版：文件->新建项目设置->新项目的设置

新建项目的默认设置

##### 2.2.1 常用编码设置

Editor->File Encodings->全部选择UTF-8即可（酌情设置，老项目可能都是GBK，具体看项目情况）

![img](https://ae01.alicdn.com/kf/H7c69286536c54c80926022cabebf0555O.png)

PS:对于 Properties 文件，勾选重要属性 Transparent native-to-ascii conversion 主要用于转换 ascii，一般都要勾选，不然 Properties 文件中的注释显示的都不会是中文。

默认情况下 IntelliJ IDEA 使用的编译器是 `javac`，而此编译只能编译 `无BOM` 的文件

##### 2.2.2 编码模板

Editor->File and Code Templates

选择Files标签下，分别修改Class/Interface/Enum/AnnotationType.添加默认作者和文件时间

class:

```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")

/**
* @author : ${USER}
* @date : ${YEAR}-${MONTH}-${DAY} ${HOUR}:${MINUTE}
**/
public class ${NAME} {
}
```

Interface:

```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")
/**
* @author : ${USER}
* @date : ${YEAR}-${MONTH}-${DAY} ${HOUR}:${MINUTE}
**/
public interface ${NAME} {
}
```

Enum:

```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")
/**
* @author : ${USER}
* @date : ${YEAR}-${MONTH}-${DAY} ${HOUR}:${MINUTE}
**/
public enum ${NAME} {
}
```

AnnotationType:

```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")
/**
* @author : ${USER}
* @date : ${YEAR}-${MONTH}-${DAY} ${HOUR}:${MINUTE}
**/
public @interface ${NAME} {
}
```

##### 2.2.3 Postfix Completion 的使用

File->Setting->Editor->General->Postfix Completion->enable post completion(默认开启的)

具体的使用方法见模板,输入相应代码按Tab键

##### 2.2.4 设置Maven仓库

Build,Execution,Deployment->Build Tools->Maven

- Maven home directory:本地Maven程序目录
- User setting file:本地Maven程序目录使用的配置文件地址
- Local repository:本地Maven仓库

设置好Maven仓库，否则有关maven的项目，总会在用户目录创建多余的.m2文件夹并且开始直接自己同步。

##### 2.2.5 自动导包与自动移除依赖

Other Settings->Auto Import-> Add unambiguous imports on the fly ✔勾选 

Other Settings->Auto Import-> Optimize imports on the fly(for current project) ✔勾选 

### 3.项目设置

#### 3.1 方法横线分割

File->Settings->Editor->General->Appearance->Show method separators ✔勾选

#### 3.2 字体与大小

File->Settings->Editor->Font->16，可以同时设置字体

编程字体推荐: JetBrainsMono .ttf

下载地址:http://pan.baidu.com/s/1kVoF32R

- Microsoft YaHei Consolas
- Microsoft YaHei Mono

#### 3.3 项目默认打开地址

File->Settings->Appearance&Behavior->System Settings->Project Opening->Default directory

#### 3.4 护眼背景色

使用过HBuilder之后，被护眼色蛊惑[[说明链接](https://ask.dcloud.net.cn/docs/#//ask.dcloud.net.cn/article/35112)]，修改Idea的背景色为FAF6E6。

File->Settings->Editor->Color Scheme->General->Text->Default text->Background->🖊FAF6E6

![img](http://upload.ouliu.net/i/20200110152041ve7hg.png)

#### 3.4 关于主题色

实际我并不使用主题

| 推荐的主题网站                                 | 推荐的主题                  |
| ---------------------------------------------- | --------------------------- |
| http://color-themes.com/?view=index            | hbuilder                    |
| http://www.easycolor.cc/intelliJidea/list.html | Modulor Light               |
| http://www.themesmap.com/                      | moon                        |
| http://www.riaway.com/                         | Solfin                      |
|                                                | green_theme                 |
|                                                | Solarized Light (Alternate) |

#### 3.5 修改注释空行

依次选择Setting->Editor->Code Style->Java,选择Code Generation，取消Line comment at first column和Block comment at first column的选中即可。

#### 3.6 路径变量设置

KOTLIN_BUNDLED

MAVEN_REPOSITORY

### 4. IDEA程序缓存及设置文件路径修改

修改Idea的一般文件设置路径，防止重装系统需要重新配置，新配置路径为程序同级目录的上层目录`.IntelliJIdea`中。

```properties
# Use ${idea.home.path} macro to specify location relative to IDE installation home.
# Use ${xxx} where xxx is any Java property (including defined in previous lines of this file) to refer to its value.
# Note for Windows users: please make sure you're using forward slashes (e.g. c:/idea/system).

#---------------------------------------------------------------------
# Uncomment this option if you want to customize path to IDE config folder. Make sure you're using forward slashes.
#---------------------------------------------------------------------
# idea.config.path=${user.home}/.IntelliJIdea/config
idea.config.path=${idea.home.path}/../.IntelliJIdea/config

#---------------------------------------------------------------------
# Uncomment this option if you want to customize path to IDE system folder. Make sure you're using forward slashes.
#---------------------------------------------------------------------
# idea.system.path=${user.home}/.IntelliJIdea/system
idea.system.path=${idea.home.path}/../.IntelliJIdea/system

#---------------------------------------------------------------------
# Uncomment this option if you want to customize path to user installed plugins folder. Make sure you're using forward slashes.
#---------------------------------------------------------------------
# idea.plugins.path=${idea.config.path}/plugins
idea.plugins.path=${idea.config.path}/plugins

#---------------------------------------------------------------------
# Uncomment this option if you want to customize path to IDE logs folder. Make sure you're using forward slashes.
#---------------------------------------------------------------------
# idea.log.path=${idea.system.path}/log
idea.log.path=${idea.system.path}/log
```

### 5.快捷键

| 快捷键                 | 介绍                               |
| ---------------------- | ---------------------------------- |
| Alt+回车               | 导入包,自动修正                    |
| Ctrl+N                 | 查找类                             |
| Ctrl+Shift+N           | 查找文件                           |
| Ctrl+Alt+L             | 格式化代码                         |
| Ctrl+Alt+O             | 优化导入的类和包                   |
| Alt+Insert             | 生成代码(如get,set方法,构造函数等) |
| Ctrl+E或者Alt+Shift+C  | 最近更改的代码                     |
| Ctrl+R                 | 替换文本                           |
| Ctrl+F                 | 查找文本                           |
| Ctrl+Shift+Space       | 自动补全代码                       |
| Ctrl+空格              | 代码提示                           |
| Ctrl+Alt+Space         | 类名或接口名提示                   |
| Ctrl+P                 | 方法参数提示                       |
| Ctrl+Shift+Alt+N       | 查找类中的方法或变量               |
| Alt+Shift+C            | 对比最近修改的代码                 |
| Shift+F6               | 重构-重命名                        |
| Ctrl+X                 | 删除行                             |
| Ctrl+D                 | 复制行                             |
| Ctrl+/ 或 Ctrl+Shift+/ | 注释（// 或者/*...*/ ）            |
| Ctrl+J                 | 自动代码                           |
| Ctrl+E                 | 最近打开的文件                     |
| Ctrl+H                 | 显示类结构图                       |
| Ctrl+Q                 | 显示注释文档                       |
| Alt+F1                 | 查找代码所在位置                   |
| Alt+1                  | 快速打开或隐藏工程面板             |
| Ctrl+Alt+ left/right   | 返回至上次浏览的位置               |
| Alt+ left/right        | 切换代码视图                       |
| Alt+ Up/Down           | 在方法间快速移动定位               |
| Ctrl+Shift+Up/Down     | 代码向上/下移动                    |
| F2 或Shift+F2          | 高亮错误或警告快速定位             |

常用快捷键

1 执行(run) alt+r 

2 提示补全 (Class Name Completion) alt+/ 

3 单行注释 ctrl + / 

4 多行注释 ctrl + shift + /

5 向下复制一行 (Duplicate Lines) ctrl+alt+down 

6 删除一行或选中行 (delete line) ctrl+d 

7 向下移动行(move statement down) alt+down 

8 向上移动行(move statement up) alt+up 

9 向下开始新的一行(start new line) shift+enter 

10 向上开始新的一行 (Start New Line before current) ctrl+shift+enter 

11 如何查看源码 (class) ctrl + 选中指定的结构 或 ctrl + shift + t 

12 万能解错/生成返回值变量 alt + enter  

13 退回到前一个编辑的页面 (back) alt + left 

14 进入到下一个编辑的页面(针对于上条) (forward) alt + right 

15 查看继承关系(type hierarchy) F4 

16 格式化代码(reformat code) ctrl+shift+F 

17 提示方法参数类型(Parameter Info) ctrl+alt+/ 

18 复制代码 ctrl + c 

19 撤销 ctrl + z 

20 反撤销 ctrl + y 

21 剪切 ctrl + x 

22 粘贴 ctrl + v 

23 保存 ctrl + s 

24 全选 ctrl + a 

25 选中数行，整体往后移动 tab 

26 选中数行，整体往前移动 shift + tab 

27 查看类的结构：类似于 eclipse 的 outline ctrl+o 

28 重构：修改变量名与方法名(rename) alt+shift+r 

29 大写转小写/小写转大写(toggle case) ctrl+shift+y

30 生成构造器/get/set/toString alt +shift + s  alt+insert

31 查看文档说明(quick documentation) F2 

32 收起所有的方法(collapse all) alt + shift + c 

33 打开所有方法(expand all) alt+shift+x 

34 打开代码所在硬盘文件夹(show in explorer) ctrl+shift+x 

35 生成 try-catch 等(surround with) alt+shift+z 

36 局部变量抽取为成员变量(introduce field) alt+shift+f 

37 查找/替换(当前) ctrl+f 

38 查找(全局) ctrl+h 

39 查找文件 double Shift 

40 查看类的继承结构图(Show UML Diagram) ctrl + shift + u 

41 查看方法的多层重写结构(method hierarchy) ctrl+alt+h 

42 添加到收藏(add to favorites) ctrl+alt+f 

43 抽取方法(Extract Method) alt+shift+m 

44 打开最近修改的文件(Recently Files) ctrl+E 

45 关闭当前打开的代码栏(close) ctrl + w 

46 关闭打开的所有代码栏(close all) ctrl + shift + w 

47 快速搜索类中的错误(next highlighted error) ctrl + shift + q 

48 选择要粘贴的内容(Show in Explorer) ctrl+shift+v 

49 查找方法在哪里被调用(Call Hierarchy) ctrl+shift+h

### 6.常用插件

| 插件名称                       | 插件介绍                             |
| ------------------------------ | ------------------------------------ |
| Key promoter                   | 快捷键提示                           |
| CamelCase                      | 驼峰式命名和下划线命名交替变化       |
| CheckStyle-IDEA                | 代码样式检查                         |
| FindBugs-IDEA                  | 代码 Bug 检查                        |
| Statistic                      | 代码统计                             |
| JRebel Plugin                  | 热部署                               |
| CodeGlance                     | 在编辑代码最右侧，显示一块代码小地图 |
| GsonFormat                     | 把 JSON 字符串直接实例化成类         |
| Alibaba Java Coding Guidelines | 阿里巴巴java代码规约                 |
| Free Mybatis plugin            | Mybatis插件                          |
| Maven Helper                   | Maven插件                            |
|                                |                                      |



参考链接：https://www.jianshu.com/p/320d82d405ad

### 7.开启多行标签

Setting—>Editor—>General—>Editor Tabs，或者打开设置直接搜索tab，下面还有最大标签设置，截图是默认只显示一行，取消即可多行显示

![](https://s3.bmp.ovh/imgs/2021/12/d2665e86cf5cf2fc.png)