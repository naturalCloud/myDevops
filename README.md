# devops

学习 **docker**，**k8s** 的历程，和常用的软件编排。

* [go-http-helloWord](go)
* [laravel](laravel)
* [tp3.23](tp3.23)
* [sftp-server](sftp-server)
* [easyswoole](easyswool)
* [goService](goService)
* [nginx+php](nginxphp)
* [redis集群](redis-cluster)
* [canal](canal)

  
## 容器更换外国源


[阿里](https://developer.aliyun.com/mirror/?spm=a2c6h.13651104.0.d1002.3bea94ddc5ttFw)
[debin](http://xkzzz.com/post/39203.html)

[](https://www.csdn.net/tags/MtTaMg4sNTc5MjQ1LWJsb2cO0O0O.html)
[](http://t.zoukankan.com/dadream-p-8058641.html)


## 查看个系统发行版本


### 目录

*   [1. 通过命令：`less /proc/version` （内核与发行版信息）](#1_less_procversion__4)
*   [2. 通过命令：`uname -a` （内核与发行版信息）](#2_uname_a__16)
*   [3. 通过命令：`lsb_release -a`（只能查看发行版信息）](#3_lsb_release_a_28)
*   [4. 通过 `less /etc/*-release` 命令（查看发行版信息）](#4__less_etcrelease__45)

目前仅在 `CentOS` 与 `Ubuntu` 系统测试，其他的系统会略有不同。

1. 通过命令：`less /proc/version` （内核与发行版信息）
   =======================================

*   Centos 8  
	`Linux version 4.18.0-147.5.1.el8_1.x86_64 (mockbuild@kbuilder.bsys.centos.org) (gcc version 8.3.1 20190507 (Red Hat 8.3.1-4) (GCC)) #1 SMP Wed Feb 5 02:00:39 UTC 2020`

*   Ubuntu 18.04.1  
	`Linux version 4.15.0-65-generic (buildd@lgw01-amd64-006) (gcc version 7.4.0 (Ubuntu 7.4.0-1ubuntu1~18.04.1)) #74-Ubuntu SMP Tue Sep 17 17:06:04 UTC 2019`


注：

1.  不同的系统显示的有可能不同，但是一般可以进行区分。
2.  `Linux version` 指的是内核版本。
3.  `CentOS` 的话：`el8_1`，`数字 8` 代表是 `CentOS 8`
4.  `Ubuntu` 则为后面的 `18.04.1`, 表示是`Ubuntu 18.04`

2. 通过命令：`uname -a` （内核与发行版信息）
   =============================

*   CentOS 8  
	`Linux iZ2ze90lblkm0mixai571vZ 4.18.0-147.5.1.el8_1.x86_64 #1 SMP Wed Feb 5 02:00:39 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux`

通过 el8 确定是 CentOS8。

*   Ubuntu  
	`Linux blog 4.15.0-65-generic #74-Ubuntu SMP Tue Sep 17 17:06:04 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux`

通过 Ubuntu 确定是 Ubuntu 系统。

3. 通过命令：`lsb_release -a`（只能查看发行版信息）
   ===================================

*   CentOS

```
Distributor ID: CentOS
Description: CentOS Linux release 8.1.1911 (Core)
Release: 8.1.1911
Codename: Core
```

*   Ubuntu

```
Distributor ID: Ubuntu
Description: Ubuntu 18.04.3 LTS
Release: 18.04
Codename: bionic
```

4. 通过 `less /etc/*-release` 命令（查看发行版信息）
   =======================================

通过`less /etc/*-release`可以匹配多个文件，在命令模式输入 `:n` 浏览下一个文件，`:p` 浏览上一个文件，通过这种方式可以看到更多详细的信息，也可以单独查看某一个文件：

`CentOS`： 一般查看 `redhat-release`、`os-release`、`lsb-release`、`system-release`。这几个文件不同的版本不一定都有。

`Ubuntu`：一般查看 `os-release`、`lsb-release`。这几个文件不同的版本不一定都有。

一般来说通过以上方法就可以拿到想要的内核信息与发行版信息，如果有其他的可以留言补充呀。

