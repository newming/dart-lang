# Dart 语言

google 推出的一款全平台的语言

[install](https://www.dartlang.org/tools/sdk#install)

> 文件多个单词通过 _ 连接

- main 方法是固定的写法，他是程序的入口

```bash
# 执行dart文件
dart [file]
```

## 特点

- 强类型语言，静态类型
- 面向对象语言，OOP

## 特性

- JIT: 即时编译，开发期间，更快编译，更快重载
- AOT: 事前编译，release期间，更快更流畅

# dart语法体系

![image](https://img.mukewang.com/szimg/5d42d4b7091e771918913491.jpg)

[dart语法API](https://api.dartlang.org/stable/2.4.0/dart-core/dart-core-library.html)

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
- 常用属性: [], length
- 常用方法: add, insert, remove, clear, indexOf, sort, sublist, shuffle, asMap, forEach, followedBy

### Map创建

- 创建 var person = {[key]: [value]}
- 创建不可变的 var person = const {[key]: [value]}
- 构造创建 var person = new Map()
- 常用属性 [], length, isEmpty, isNotEmpty, keys, values
- 常用方法 containsKey, containValue, remove, forEach

### dynamic

数据类型不固定

```dart
dynamic b = 20;
b = 'javascript';
```

## 运算符

### 算数运算符

- 加减乘除: +, -, *, /, ~/(取整), %
- 递增递减: ++var, var++, --var, var--

### 关系运算符

- 运算符: ==, !=, >, <, >=, <=
- 判断内容是否相同使用 ==

### 逻辑运算符

- 运算符: !, &&, ||
- 针对布尔类型运算

### 赋值运算符

- 基础运算符: =, ??=
- 复合运算符: +=, -=, *=, /=, %=, ~/=

### 条件表达式

- 三目运算符: condition ? expr1 : expr2
- ??运算符: expr1 ?? expr2 类似js中的 ||，第一个为真返回第一个参数，否则返回第二个，dart 中的 && 与 || 只能操作 bool 值，并且返回一个 bool

## 控制语句

### if语句

### for语句

- for
- for...in...

### while语句

- while循环
- do...while循环: 至少会先走一次 do

### break和continue

### switch...case语句

## Function

```
返回类型 方法名 (参数1， 参数2, ...) {
  方法体
  return 返回值
}
```

特性：

- 方法也是对象，并且有具有类型 Function
- 返回值类型、参数类型都可省略
- 箭头语法：bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
- 方法都有返回值，如果没有指定，默认 return null

### 匿名函数

```
(参数1, 参数2, ...) {
  方法体
  return 返回值
}
```

- 可以赋值给变量，通过变量进行调用
- 可在其他方法中直接调用或传递给其他方法

### 闭包

## 面向对象

### 类与对象

- 使用关键字 class 声明一个类
- 使用关键字 new 创建一个对象，new可以省略
- 所有对象都继承于 Object 类

### 属性和方法

- 属性默认会生成getter和setter方法
- 使用 final 声明的属性只有getter方法
- 属性和方法通过`.`访问
- 方法不能被重载

### 成员可见性

- Dart中的可见性以`library`(库)为单位
- 默认情况下，每一个Dart文件就是一个库
- 使用`_`表示库的私有性
- 使用 import 导入库

### 计算属性

### 构造方法

- 如果没有自定义构造方法，则会有个默认的构造方法
- 如果存在自定义构造方法，则默认构造方法无效
- 构造方法不能重载

### 命名构造方法

- 使用命名构造方法，可以实现多个构造方法
- 使用 `类名.方法` 的形式实现

### 常量构造方法

- 如果类是不可变状态，可以把对象定义为编译时常量
- 使用 const 声明构造方法，并且所有变量都为 final
- 使用 const 声明对象

### 工厂构造函数

factory 关键字

### 初始化列表

- 初始化列表会在构造方法体执行之前执行
- 使用都好分隔初始化表达式
- 初始化列表常用于设置 final 变量的值

### 静态成员

- 使用 static 关键字来实现类级别的变量和函数
- 静态成员不能访问非静态成员，非静态成员可以访问静态成员
- 类中的常量需要使用 static const 声明

### 对象操作符

- 条件成员访问: ?.
- 类型转换: as
- 是否是指定类型: is, is!
- 级联操作: ..

### 对象中的 call 方法

- 如果类实现了 call() 方法，则该类的对象可以作为方法使用

### 继承

- 使用关键字 extends 继承一个类
- 子类会继承父类可见的属性和方法，不会继承构造方法
- 子类能够复写父类的方法、getter和setter
- 单继承、多态性

### 继承中的构造方法

- 子类的构造方法默认会调用父类的无名无參构造方法
- 如果父类没有无名无參构造方法，则需要显示调用父类构造方法
- 在构造方法参数后使用 `:` 显示的调用父类构造方法

### 构造方法执行顺序

- 父类的构造方法在子类构造方法体开始执行的位置调用
- 如果有初始化列表，初始化列表会在父类构造方法之前执行

### 抽象类

抽象类不能被实例化，只能被继承，继承的子类需要实现父类的抽象方法

- 抽象类使用 abstract 表示，不能直接别实例化
- 抽象方法不用 abstract 修饰，无实现
- 抽象类可以没有抽象方法
- 有抽象方法的类一定得声明成抽象类

### 接口

implements 关键字

- 类和接口是统一的，类就是接口
- 每个类都隐式的定义了一个包含所有实例成员的接口
- 如果是复用已有类的实现，使用继承 extends
- 如果只是使用已有类的外在行为，使用接口 implements

### Mixins

```dart
// with 关键字，必须有 extends 才可以接着使用 Mixins
class D extends A with B, C {
}

// 上边使用 Mixins 的方式的简写
class D = A with B, c {
}
```

- Mixins类似于多继承，是在多类继承中重用一个类代码的方式
- 作为 Mixins 的类不能显示声明构造方法
- 作为 Mixins 的类只能继承自 Object
- 使用关键字 with 连接一个或多个 mixin

### 操作符覆写

[操作符覆写](http://dart.goodev.org/guides/language/language-tour#overridable-operators%E5%8F%AF%E8%A6%86%E5%86%99%E7%9A%84%E6%93%8D%E4%BD%9C%E7%AC%A6)

```
返回类型 operator 操作符 (参数1, 参数2, ...) {
  实现体
  return 返回值
}
```

- 覆写操作符需要在类中定义
- 如果覆写 ==，还需要覆写对象的 hashCode getter 方法

## 枚举

- 枚举是一种有穷序列集的数据类型
- 使用关键字 enum 定义一个枚举
- 常用于代替常量，控制语句等
- index 从0开始，依次累加
- 不能指定原始值，只能从0开始
- 不能添加方法

## 泛型

- Dart中类型是可选的，可使用泛型限定类型
- 使用泛型能够有效的减少代码重复
