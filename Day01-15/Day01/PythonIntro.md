## Day01 - Introduction to Python

### Python Summary

#### The History of Python

1. Christmas of 1989: Guido von Rossum started to write compiler for the Python language.
2. Feb of 1991: The first Python compiler was created, written in C language (Later on, Jython, an implementation of the Python language designed to run on Java platform was created. Also IronPython for .NET and C#, PyPy, Brython, and Pyston etc), which was able to use C libraries. In the earliest version, Python provided support for things like "Class", "functions/methods", "Exceptions" etc, as well as abstract data structures such as "Lists" and "Dictionaries" and modularity. 
3. Jan of 1994: Release of Python 1.0
4. Oct/16/2000: Release of Python 2.0. with support for [Unicode](https://en.wikipedia.org/wiki/Unicode) and complete [garbage collection](https://en.wikipedia.org/wiki/Garbage_collection_(computer_science)). At the same time, the Python development process became more transparent, ecosystem began to form as the community began to influence the development of Python. 
5. Dec/03/2008: Release of Python 3.0, which is not compatible with previous version of Python code. However, since a lot of companies still uses Python 2.x for maintenance and development, a lot of functions of Python 3.x were also integrated into Python 2.6/2.7. 

The Python 3.7.x we are currently using was released in 2018. The version number of Python is divided into 3 parts: MAJOR.MINOR.PATCH.  
MAJOR is incremented when incompatible API changes are made  
MINOR is incremented when functionality in a backwards-compatible manner were added  
PATCH is incremented when backwards-compatible bug fixes were made  
If interested in Python history, please go read [《Python简史》](http://www.cnblogs.com/vamei/archive/2013/02/06/2892628.html)



#### Pros and Cons of Python

Python has a lot of advantages:

1. Simple and easy to understand, one way of development
2. Shallow learning curve compared to a lot of other languages
3. Open source code, strong community support
4. Interpretive language, therefore platform independent. 
5. Supports Object Oriented Programming as well as Functional Programming
6. Scalable, can use C/C++ libraries as well as being used in C/C++. 
7. High code readability

Python disadvantages:

1. Slow performance, therefore C/C++ is still used for intensive computation.
2. Code cannot be encoded.
3. Too many frameworks to choose from (Roughly 100 for web frameworks).

#### Python Usage

<!-- 目前Python在云基础设施、DevOps、网络爬虫开发、数据分析挖掘、机器学习等领域都有着广泛的应用，因此也产生了Web后端开发、数据接口开发、自动化运维、自动化测试、科学计算和可视化、数据分析、量化交易、机器人开发、图像识别和处理等一系列的职位。 -->

Currently, Python is used extensively in fields such as cloud storage infrastructure, DevOps, Web Crawling, Data Mining and Analysis, and Machine Learning. Therefore, creating jobs such as web backend development, API development, scientific computation and visualization, data analysis, quantitative trading, robot development, image processing etc. 

### Development Environment

#### Windows

<!-- 可以在[Python官方网站](https://www.python.org)下载到Python的Windows安装程序（exe文件），需要注意的是如果在Windows 7环境下安装需要先安装Service Pack 1补丁包（可以通过一些工具软件自动安装系统补丁的功能来安装），安装过程建议勾选“Add Python 3.6 to PATH”（将Python 3.6添加到PATH环境变量）并选择自定义安装，在设置“Optional Features”界面最好将“pip”、“tcl/tk”、“Python test suite”等项全部勾选上。强烈建议使用自定义的安装路径并保证路径中没有中文。安装完成会看到“Setup was successful”的提示，但是在启动Python环境时可能会因为缺失一些动态链接库文件而导致Python解释器无法运行，常见的问题主要是api-ms-win-crt\*.dll缺失以及更新DirectX之后导致某些动态链接库文件缺失，前者可以参照[《api-ms-win-crt\*.dll缺失原因分析和解决方法》]()一文讲解的方法进行处理或者直接在[微软官网](https://www.microsoft.com/zh-cn/download/details.aspx?id=48145)下载Visual C++ Redistributable for Visual Studio 2015文件进行修复，后者可以下载一个DirectX修复工具进行修复。 -->

Download Python V3.7 executable from https://www.python.org/downloads/windows/. Choose Windows executable installer. Note that if you are installing in Windows 7, you may need to ensure that Service Pack 1 patch is installed.  
When installing, recommend "Add Python 3.x to Path", this will add Python to the environment variable, and allows you to run command "Python" in CMD.  
Also, it is recommended to install all optional features.  

#### Linux

<!-- Linux环境自带了Python 2.x版本，但是如果要更新到3.x的版本，可以在[Python的官方网站](https://www.python.org)下载Python的源代码并通过源代码构建安装的方式进行安装，具体的步骤如下所示。

安装依赖库（因为没有这些依赖库可能在源代码构件安装时因为缺失底层依赖库而失败）。 -->

Linux has Python 2.x pre-installed. If you want to upgrade, can download the source release from https://www.python.org/downloads/source/. The steps are as follows:


Install dependencies

```Shell
yum -y install wget gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel libffi-devel
```

Download Python source code and extract to specified location

```Shell
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
xz -d Python-3.7.3.tar.xz
tar -xvf Python-3.7.3.tar
```


Install Python under source release directory

```Shell
cd Python-3.7.3
./configure --prefix=/usr/local/python37 --enable-optimizations
make && make install
```


Edit .bash_profile, to add Python to environment variable. 

```Shell
cd ~
vim .bash_profile
```

```Shell
# ...Other code...

export PATH=$PATH:/usr/local/python37/bin

# ... Other code...
```

```Shell
source .bash_profile
```

#### MacOS

<!-- MacOS也是自带了Python 2.x版本的，可以通过[Python的官方网站](https://www.python.org)提供的安装文件（pkg文件）安装3.x的版本。默认安装完成后，可以通过在终端执行python命令来启动2.x版本的Python解释器，可以通过执行python3命令来启动3.x版本的Python解释器。 -->

MacOS also has Python 2.x pre-installed. Can directly download the installer from https://www.python.org/downloads/mac-osx/ to upgrade to 3.x. After default installation, can run `python` command from terminal for Python 2.x or `python3` for running Python 3.x.

### Running Python from terminal

#### Checking Python Version

Enter the following command in terminal or Command Prompt

```Shell
python --version
```
<!-- 当然也可以先输入python进入交互式环境，再执行以下的代码检查Python的版本。 -->
You can also go into Python shell and run python code to check version:

```Python
import sys

print(sys.version_info)
print(sys.version)
```

#### Writing Python Code

<!-- 可以用文本编辑工具（推荐使用Sublime、Atom、TextMate、VSCode等高级文本编辑工具）编写Python源代码并将其命名为hello.py保存起来，代码内容如下所示。 -->

You can use any text editor (Recommending Sublime, Atom, VSCode etc), write the following code and save as `hello.py`

```Python
print('hello, world!')
```

#### Execute script


Navigate to source code directory and execute the following command, your screen should print "hello world!"

```Shell
python hello.py
```

### Code comment

<!-- 注释是编程语言的一个重要组成部分，用于在源代码中解释代码的作用从而增强程序的可读性和可维护性，当然也可以将源代码中不需要参与运行的代码段通过注释来去掉，这一点在调试程序的时候经常用到。注释在随源代码进入预处理器或编译时会被移除，不会在目标代码中保留也不会影响程序的执行结果。 -->

Comment is an essential part of programming language, used to explain the usage and purpose of the code, in order to increase readability and maintainability. You can also comment out unused code, which is often used in testing programs. Comments will be deleted once the source code is being compiled, therefore will not affect program execution. 

1. Single line comment - starts with # and a space
2. Multi-line comment - starts and ends with """

```Python
"""
First Python Program - hello, world!
向伟大的Dennis M. Ritchie先生致敬

Version: 0.1
Author: 骆昊
"""

print('hello, world!')
# print("你好,世界！")
print('你好', '世界')
print('hello', 'world', sep=', ', end='!')
print('goodbye, world', end='!\n')
```

### Other tools

#### IDLE - Integrated development environment

IDLE is an integrated development environment for Python, which is bundled with the default implementation of the language. However, since it doesn't provide the best user experience, it's rarely used. 

![](./res/python-idle.png)

#### IPython - A better interactive computing tool

<!-- IPython是一种基于Python的交互式解释器。相较于原生的Python Shell，IPython提供了更为强大的编辑和交互功能。可以通过Python的包管理工具pip安装IPython和Jupyter，具体的操作如下所示。 -->

IPython is a command shell for interactive computing, originally developed for the Python programming language. Pip (Python package-management system) is used to install IPython and Jupyter:

```Shell
pip install ipython jupyter
```

or

```Shell
python -m pip install ipython jupyter
```

<!-- 安装成功后，可以通过下面的ipython命令启动IPython，如下图所示。 -->

After successfully installing, use following ipython command to start IPython:

![](./res/python-ipython.png)

<!-- 当然我们也可以通过Jupyter运行名为notebook的项目在浏览器窗口中进行交互式操作。 -->

We can also use Jupyter and run a notebook to use in the browser:

```Shell
jupyter notebook
```

![](./res/python-jupyter-2.png)

#### anaconda - Open source distribution for scientific computing
<!-- Anaconda指的是一个开源的Python发行版本，其包含了conda、Python等180多个科学包及其依赖项。
因为包含了大量的科学包，Anaconda 的下载文件比较大（约 531 MB），如果只需要某些包，或者需要节省带宽或存储空间，也可以使用Miniconda这个较小的发行版（仅包含conda和 Python）。
对于学习数据科学的人来说，anaconda是绝对的神器，安装简便，而且anaconda支持安装相关软件【例如前文提到的ipython，jupyter notebook，甚至有R等其他数据科学软件 】
[一个相当有价值的介绍](https://www.jianshu.com/p/169403f7e40c)
现在唯一的问题在于清华镜像服务已经关闭，跨国下载会比较慢 -->

[Anaconda](https://www.anaconda.com/) is a free and open-source distribution of the Python and R programming languages for scientific computing, which simplifies package management and deployment.

#### Sublime Text - Text editor

Can be downloaded at https://www.sublimetext.com/

#### PyCharm - IDE

Can be downloaded at https://www.jetbrains.com/pycharm/  
PyCharm is a really good integrated development environment with powerful functionalities. 

![](./res/python-pycharm.png)

#### Gitpod - One click online development tool

<!-- 只需单击即可在GitHub上打开任何Python项目。 -->
You can click this to open any Python project on Github  
More documentation at https://www.gitpod.io/docs

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/jackfrued/Python-100-Days)

### Exercise

1. Review the following code in Python Shell

    ```Python
    import this
    
    Beautiful is better than ugly.
    Explicit is better than implicit.
    Simple is better than complex.
    Complex is better than complicated.
    Flat is better than nested.
    Sparse is better than dense.
    Readability counts.
    Special cases aren't special enough to break the rules.
    Although practicality beats purity.
    Errors should never pass silently.
    Unless explicitly silenced.
    In the face of ambiguity, refuse the temptation to guess.
    There should be one-- and preferably only one --obvious way to do it.
    Although that way may not be obvious at first unless you're Dutch.
    Now is better than never.
    Although never is often better than *right* now.
    If the implementation is hard to explain, it's a bad idea.
    If the implementation is easy to explain, it may be a good idea.
    Namespaces are one honking great idea -- let's do more of those!
    ```

2. Learn to draw using turtle library

    ```Python
    import turtle
    
    turtle.pensize(4)
    turtle.pencolor('red')
    turtle.forward(100)
    turtle.right(90)
    turtle.forward(100)
    turtle.right(90)
    turtle.forward(100)
    turtle.right(90)
    turtle.forward(100)
    turtle.mainloop()
    ```