void main() {
  var person = new Person("zhangsan", 18);
  print(person.name);

  var person1 = new Person.namedConstructor("lisi");
  print(person1.name);

  const earth = const Earth(18923);
  print(earth);
  // earth.age = 13213; // 不可修改
}

class Person {
  String name;
  int age;
  final String gender = "male";

  // 自定义构造函数
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  // 简写上边内容 语法糖
  Person(this.name, this.age) {
    print(name);
  }

  // 命名的构造方法
  Person.namedConstructor(String name) {
    this.name = name;
  }
}

// 常量构造方法
class Earth {
  final String name = "earth";
  final int age;
  const Earth(this.age);
}