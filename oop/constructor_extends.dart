void main() {
  var student = new Student(); // 自动调用父类无名无參的构造方法
  print(student.name);

  var student1 = new Student1("name", "Male");
  print(student1);
}

class Person {
  String name;

  Person() {
    print("Person..."); // 会被执行
  }
}

class Student extends Person {
  int age;
}

class Person1 {
  String name;

  Person1(this.name);

  Person1.withName(this.name);
}
// Student 必须显示调用父类构造函数
class Student1 extends Person1 {
  int age;
  final String gender;

  // 初始化列表必须放在调用父类构造函数前
  Student1(String name, String gender) : gender = gender, super.withName(name);
}
