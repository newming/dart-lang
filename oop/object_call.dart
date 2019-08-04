void main() {
  var person = new Person();
  person.name = "name";
  person.age = 20;
  person(); // 实例对象直接当作方法执行(call)

  var person1 = new Person1();
  person1("hh");
}

class Person {
  String name;
  int age;

  // void work() {
  //   print("Name is $name");
  // }
  // 同样可以有返回值
  void call() {
    print("name is $name");
  }
}

class Person1 {
  void call(String name) {
    print("name is $name");
  }
}