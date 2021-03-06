# FastCAE_Linux源码下载与编译说明（源码下载编译必读）

# 特别注意：
1. 源码绝对路径中不要出现中文字符;
2. 源码文件夹中不要出现空格(){}*/?|\等特殊字符
3. 要求必须安装gcc,g++,Qt5.14.2（自行安装），python3.7.0
4. 建议使用Linux系统为Ubuntu20.04
5. 建议自行配置python3.7.0环境

# 源码下载：
两种方式可以下载源码，直接下载和使用git克隆
1. 直接下载，从GitHub直接一次性打包下载全部源码。
2. git克隆，使用git克隆代码仓库，后续可以不断拉取更新。

# python环境配置：
如果不能自行配置相应python环境，可以使用Python文件夹中的_Install_Python.sh进行python环境配置

#文件夹结构：
1. Code    FastCAE_Linux源码
2. OCC     OpenCASCADE7.5.0编译的第三方库，适用于Linux平台
3. VTK     VTK9.0.1编译的第三方库，适用于Linux平台
4. output  程序的编译输出
5. cgns     cgns第三方库，适用于Linux平台
6. quazip   压缩文件的第三方库
7. Python   python3.7.0相关配置文件

# 编译过程：
第一次编译需要运行 Run.sh，会对配置好软件运行所需要的环境

# 重要脚本说明：
1. Run.sh                     下载完源码之后在本机配置生成开发环境，在一台机器上正确运行一次即可，若中间出现错误可重复运行
2. Create_Linux64_Project.sh  将Qt管理的工程文件转化为VS的工程文件，当工程设置出现修改的时候（*.Pro*.pri修改）需要重新运行
3. Copy_SOs.sh                将程序运行必需的dll拷贝到运行目录下
4. Copy_Pys.sh                将程序运行必需的python脚本拷贝到运行目录
5. _Create_Project.sh         存在于每个模块中，作用与Create_Linux64_Project.sh相同，区别在于各模块只是更新各自的VS工程文件
6. _Install_Python.sh          用于配置程序运行所需要python3.7.0的环境


# 帮助文档
http://www.fastcae.com/document.html
            
#   社区论坛
http://disc.fastcae.com/forum.php

# Windows版本地址
https://github.com/DISOGitHub/FastCAE


# 感谢开源贡献者：
    Ribbon风格组件  （SARibbon）   陈宗衍 czy.t@163.com   源代码参考：https://github.com/czyt1988/SARibbon   或   https://gitee.com/czyt1988/SARibbon
    远程任务提交插件 （PluginTaskCommit） 张立春 zhang. lichun@foxmail.com 
                                        赵德祥 zhao. dexiang@foxmail.com
