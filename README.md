# Dart 语言

google 推出的一款全平台的语言

[install](https://www.dartlang.org/tools/sdk#install)

> 文件多个单词通过 _ 连接

- main 方法是固定的写法，他是程序的入口

```bash
# 执行dart文件
dart [file]
```

## 变量

- 使用 var 声明变量，可赋予不同类型的值
- 为初始化时，默认值为 null
- 使用 final 声明一个只能赋值一次的变量

## 常量

- 使用 const 声明常量
- 使用 const 声明的必须是编译期常量
- 不可以修改

## 数据类型

- 数值型-Number，包含 int double 两种 NaN
- 字符串-String
- 布尔值-Boolean
- 列表-List
- 键值对-Map
- Runes
- Symbols

### Number 操作

- 运算符：+ - * / ~/(取整) %
- 常用属性：isNaN, isEven, isOdd 等
- 常用方法：abs(), round(), floor(), ceil(), toInt(), toDouble()

### String

- 使用单引号，双引号创建字符串
- 使用三个引号或双引号创建多行字符串
- 使用 r 创建原始 raw 字符串
- 运算符: + * == []
- 差值表达式: ${expression}
- 常用属性: length, isEmpty, isNotEmpty
- 常用方法: contains(), subString(), startsWith(), endsWith(), indexOf(), lastIndexOf(), toLowerCase(), trim() ....

### 布尔型

- 使用 bool 表示布尔类型
- 布尔值只有 true 和 false

### List(数组)创建

- 创建 List: var list = [1, 2, 3]
- 创建不可变的 List: var list = const[1, 3, 4]
- 构造创建: var list = new List()
