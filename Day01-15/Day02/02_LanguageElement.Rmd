<!-- ## Day02 - 语言元素 -->

## Day02 - Elements of Programming Languages

<!-- #### 指令和程序 -->
#### Instructions and Programs 

<!-- 计算机的硬件系统通常由五大部件构成，包括：运算器、控制器、存储器、输入设备和输出设备。其中，运算器和控制器放在一起就是我们通常所说的中央处理器，它的功能是执行各种运算和控制指令以及处理计算机软件中的数据。我们通常所说的程序实际上就是指令的集合，我们程序就是将一系列的指令按照某种方式组织到一起，然后通过这些指令去控制计算机做我们想让它做的事情。今天我们使用的计算机虽然器件做工越来越精密，处理能力越来越强大，但究其本质来说仍然属于[“冯·诺依曼结构”](https://zh.wikipedia.org/wiki/%E5%86%AF%C2%B7%E8%AF%BA%E4%BC%8A%E6%9B%BC%E7%BB%93%E6%9E%84)的计算机。“冯·诺依曼结构”有两个关键点，一是指出要将存储设备与中央处理器分开，二是提出了将数据以二进制方式编码。二进制是一种“逢二进一”的计数法，跟我们人类使用的“逢十进一”的计数法没有实质性的区别，人类因为有十根手指所以使用了十进制（因为在数数时十根手指用完之后就只能进位了，当然凡事都有例外，玛雅人可能是因为长年光着脚的原因把脚趾头也算上了，于是他们使用了二十进制的计数法，在这种计数法的指导下玛雅人的历法就与我们平常使用的历法不一样，而按照玛雅人的历法，2012年是上一个所谓的“太阳纪”的最后一年，而2013年则是新的“太阳纪”的开始，后来这件事情被以讹传讹的方式误传为”2012年是玛雅人预言的世界末日“这种荒诞的说法，今天我们可以大胆的猜测，玛雅文明之所以发展缓慢估计也与使用了二十进制有关）。对于计算机来说，二进制在物理器件上来说是最容易实现的（高电压表示1，低电压表示0），于是在“冯·诺依曼结构”的计算机都使用了二进制。虽然我们并不需要每个程序员都能够使用二进制的思维方式来工作，但是了解二进制以及它与我们生活中的十进制之间的转换关系，以及二进制与八进制和十六进制的转换关系还是有必要的。如果你对这一点不熟悉，可以自行使用[维基百科](https://zh.wikipedia.org/wiki/%E4%BA%8C%E8%BF%9B%E5%88%B6)或者[百度百科](https://baike.baidu.com)科普一下。 -->

The hardware system of a computer is composed of 5 major components: processor, controller, memory, input and output devices (I/O). Processor and controller together makes up what we usually call "Central Processing Unit" or "CPU", whose function is to execute computing instructions and process data from a computer program.   

A computer program is essentially a series of instructions, which we use to tell computer what we want to be done. Although the computer nowadays is getting faster and more powerful, but it is still a ["Von Neumann architecture"](https://en.wikipedia.org/wiki/Von_Neumann_architecture) computer. There are 2 key points for "Von Neumann architecture": the separation of CPU and memory, and binary representation of data. For a computer, binary is easiest to realize physically (high voltage represents 1, low voltage represents 0), which is why it is used in Von Neumann architecture. To read more about binary representation of data, go to Wiki for [Binary Code](https://en.wikipedia.org/wiki/Binary_code). If you are not familiar with Binary or Hex or Decimal notation and conversion, read the following Wiki:

- [Binary](https://en.wikipedia.org/wiki/Binary_number)
- [Hexadecimal](https://en.wikipedia.org/wiki/Hexadecimal)
- [Decimal](https://en.wikipedia.org/wiki/Decimal)
- [Octal](https://en.wikipedia.org/wiki/Octal)

<!-- ### 变量和类型 -->
### Variables and Types
<!-- 
在程序设计中，变量是一种存储数据的载体。计算机中的变量是实际存在的数据或者说是存储器中存储数据的一块内存空间，变量的值可以被读取和修改，这是所有计算和控制的基础。计算机能处理的数据有很多中类型，除了数值之外还可以处理文本、图形、音频、视频等各种各样的数据，那么不同的数据就需要定义不同的存储类型。Python中的数据类型很多，而且也允许我们自定义新的数据类型（这一点在后面会讲到），我们先介绍几种常用的数据类型。 -->

In software design, variable is a way to store data. The variables in computer are actually stored physically in a memory space in the storage, which can be read and modified. This is the basic of all computing and control. A computer can process many kinds of data, such as text, images, audio and video. Different types of data require different data types, and Python provides support for many. Python also allows creation of custom data types (which we will talk about later), here are some most common data types:

- Integer: Python can process integer of any length (Python 2.x has int and long to represent integers, but in Python 3.x only int is used), and supports binary, octal, decimal and hexadecimal representation (`0b100` is 4 in binary, `0o100` is 64 in octal, `0x100` is 256 in hexadecimal). 

- Floating point numbers: decimal numbers. Can be represented in scientific notation as well (`1.2345e2`). 

- Strings: text surrounded by either double or single quotes (`'hello'` or `"hello"`). Strings also include raw string, byte string, unicode string, multiple string (surrounded by 3 double or single quotes). 

- Boolean: Booleans only have 2 values: `True` or `False` (Capitalization is important). Boolean values can also be computed (`3 < 5` => `False`). 

- Complex numbers: `3+5j`, same as mathematical complex numbers. 

<!-- - 整型：Python中可以处理任意大小的整数（Python 2.x中有int和long两种类型的整数，但这种区分对Python来说意义不大，因此在Python 3.x中整数只有int这一种了），而且支持二进制（如`0b100`，换算成十进制是4）、八进制（如`0o100`，换算成十进制是64）、十进制（`100`）和十六进制（`0x100`，换算成十进制是256）的表示法。
- 浮点型：浮点数也就是小数，之所以称为浮点数，是因为按照科学记数法表示时，一个浮点数的小数点位置是可变的，浮点数除了数学写法（如`123.456`）之外还支持科学计数法（如`1.23456e2`）。
- 字符串型：字符串是以单引号或双引号括起来的任意文本，比如`'hello'`和`"hello"`,字符串还有原始字符串表示法、字节字符串表示法、Unicode字符串表示法，而且可以书写成多行的形式（用三个单引号或三个双引号开头，三个单引号或三个双引号结尾）。 -->
<!-- - 布尔型：布尔值只有`True`、`False`两种值，要么是`True`，要么是`False`，在Python中，可以直接用`True`、`False`表示布尔值（请注意大小写），也可以通过布尔运算计算出来（例如`3 < 5`会产生布尔值`True`，而`2 == 1`会产生布尔值`False`）。
- 复数型：形如`3+5j`，跟数学上的复数表示一样，唯一不同的是虚部的`i`换成了`j`。 -->

<!-- #### 变量命名 -->

#### Variable Naming

<!-- + -->

We need to give every variable a name, and the name must follow some mandatory rules:

- Mandatory rules：
  <!-- - 变量名由字母（广义的Unicode字符，不包括特殊字符）、数字和下划线构成，数字不能开头。
  - 大小写敏感（大写的`a`和小写的`A`是两个不同的变量）。
  - 不要跟关键字（有特殊含义的单词，后面会讲到）和系统保留字（如函数、模块等的名字）冲突。 -->
  - Variables need to be composed of letters (not including special characters), numbers and underscores. Numbers cannot be the first character. 
  - Case sensitive (`A` is not the same variable as `a`)
  - Cannot be the same as reserved words (`and`, `del`, `def`)
- PEP 8 requirement：
  <!-- - 用小写字母拼写，多个单词用下划线连接。
  - 受保护的实例属性用单个下划线开头（后面会讲到）。
  - 私有的实例属性用两个下划线开头（后面会讲到）。 -->
  - variable should be lower case, multiple words are joined using underscore
  - protected field should start with 1 underscore
  - private field should start with 2 underscores

<!-- 当然，作为一个专业的程序员，给变量（事实上应该是所有的标识符）命名时做到见名知意也是非常重要的。 -->

As a professional developer, you should name the variable such that other developers instantly know what the variable is used for based on the naming. 

#### Usage of variables

<!-- 下面通过几个例子来说明变量的类型和变量使用。 -->

We will explain the variable types and usages using the following examples:

```Python
"""
Using variables to store and compute data

Version: 0.1
Author: 骆昊
"""

a = 321
b = 123
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a // b)
print(a % b)
print(a ** b)

```

```Python
"""

gather user input and cast to an integer type
Use string format to format output string

Version: 0.1
Author: 骆昊
"""

a = int(input('a = '))
b = int(input('b = '))
print('%d + %d = %d' % (a, b, a + b))
print('%d - %d = %d' % (a, b, a - b))
print('%d * %d = %d' % (a, b, a * b))
print('%d / %d = %f' % (a, b, a / b))
print('%d // %d = %d' % (a, b, a // b))
print('%d %% %d = %d' % (a, b, a % b))
print('%d ** %d = %d' % (a, b, a ** b))

```

```Python
"""
Using type() to check data type

Version: 0.1
Author: 骆昊
Date: 2018-02-27
"""

a = 100
b = 12.345
c = 1 + 5j
d = 'hello, world'
e = True
print(type(a))
print(type(b))
print(type(c))
print(type(d))
print(type(e))

```

<!-- 在对变量类型进行转换时可以使用Python的内置函数（准确的说下面列出的并不是真正意义上的函数，而是后面我们要讲到的创建对象的构造方法）。 -->

To convert variable types, we can use some built-in functions in Python (technically these are not functions, but related to objects which we will talk about later):

<!-- - `int()`：将一个数值或字符串转换成整数，可以指定进制。
- `float()`：将一个字符串转换成浮点数。
- `str()`：将指定的对象转换成字符串形式，可以指定编码。
- `chr()`：将整数转换成该编码对应的字符串（一个字符）。
- `ord()`：将字符串（一个字符）转换成对应的编码（整数）。 -->

- `int()`：converting a string or data to integer, can specify notation。
- `float()`：converting a string to floating point number。
- `str()`：converting to string, can specify encoding。
- `chr(i)`: return the string representing a character whose Unicode code point is the integer i 。
- `ord(c)`：Given a string representing 1 unicode character, return an integer representing the unicode code point of that character

For more built-in functions: https://docs.python.org/3/library/functions.html

### Operators

<!-- Python支持多种运算符，下表大致按照优先级从高到低的顺序列出了所有的运算符，我们会陆续使用到它们。 -->

Python supports many operators, the chart below shows all operators in their precedence from high to low

| Operators                                                       | Description                           |
| ------------------------------------------------------------ | ------------------------------ |
| `[]` `[:]`                                                   | Index，Slice                     |
| `**`                                                         | Exponent                           |
| `~` `+` `-`                                                  | Binary one's compliment, unary positive, unary negative               |
| `*` `/` `%` `//`                                             | Multiplication, Division, Remainder, Integer Division               |
| `+` `-`                                                      | Addition, Subtraction                        |
| `>>` `<<`                                                    | Bitwise Shift Right, Bitwise Shift Left                      |
| `&`                                                          | Bitwise AND                       |
| `^` `\|`                                                     | Bitwise XOR, Bitwise OR
| `<=` `<` `>` `>=`                                            | Less than or equal, Less than, Greater than, Greater than or equal|
| `==` `!=`                                                    | Equal, Not equal                   |
| `is`  `is not`                                               | Same/not same object identity                     |
| `in` `not in`                                                | Value in/not in set                     |
| `not` `or` `and`                                             | not, or, and                     |
| `=` `+=` `-=` `*=` `/=` `%=` `//=` `**=` `&=` `\|=` `^=` `>>=` `<<=` | Mathematical and Assignment operators             |

>**Note:** In actual development, if uncertain about precedence, can use `()` to ensure precedence. 

Following examples shows how operators can be used:

```Python
"""
运算符的使用

Version: 0.1
Author: 骆昊
"""

a = 5
b = 10
c = 3
d = 4
e = 5
a += b
a -= c
a *= d
a /= e
print("a = ", a)

flag1 = 3 > 2
flag2 = 2 < 1
flag3 = flag1 and flag2
flag4 = flag1 or flag2
flag5 = not flag1
print("flag1 = ", flag1)
print("flag2 = ", flag2)
print("flag3 = ", flag3)
print("flag4 = ", flag4)
print("flag5 = ", flag5)
print(flag1 is True)
print(flag2 is not False)

```

### Exercise

#### Exercise 1：Convert fahrenheit to celsius

```Python
"""
fahrenheit to celsius
F = 1.8C + 32

Version: 0.1
Author: 骆昊
"""

f = float(input('Please Enter Fahrenheit: '))
c = (f - 32) / 1.8
print('%.1f fahrenheit = %.1f celsius' % (f, c))

```

#### Exercise 2：Enter radius to find diameter and area of a circle

```Python
"""

Version: 0.1
Author: 骆昊
"""

import math

radius = float(input('Please enter radius: '))
diameter = 2 * math.pi * radius
area = math.pi * radius * radius
print('diameter: %.2f' % diameter)
print('area: %.2f' % area)

```

#### Exercise 3：Enter year to find if it is a leap year。

```Python
"""
Enter year, if leap year output true, else false

Version: 0.1
Author: 骆昊
"""

year = int(input('Enter year: '))
# Code that is too long can be broken into 2 lines with \ or ()
is_leap = (year % 4 == 0 and year % 100 != 0 or
           year % 400 == 0)
print(is_leap)
```

