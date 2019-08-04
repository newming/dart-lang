void main() {
  // var person = new Person(); // 抽象类不能被实例化，只能被继承，继承的子类需要实现父类的抽象方法

  var student = new Student();
  student.run();
}

abstract class Person {
  // 抽象方法
  void run();
  // void run() {};
}

class Student extends Person {
  @override
  void run() {
    print("student run");
  }
}
