class Person {
  String name;
  int age;
  String _birthday = "13231"; // 私有属性

  // 计算属性
  bool get isAdult => age > 18;

  void run() {
    print("person run ...");
  }
  // Person默认继承 Object，这里覆盖默认的 toString 方法
  @override
  String toString() {
    return "name is $name";
  }
}

class Student extends Person {
  void study() {
    print("Student study...");
  }
  // 复写父类getter
  @override
  bool get isAdult => age > 30;

  @override
  void run() {
    print("student run");
  }
}

void main() {
  var student = new Student();
  student.study();

  student.name = "Tom";
  student.age = 23;
  print(student._birthday);
  print(student.isAdult);
  student.run();

  // 多态
  Person person1 = new Person(); // 只能取父类的属性和方法
  person1.name = "peter";
  person1.run(); // person run ...

  if (person1 is Student) {
    person1.study();
  }
  // print(person1); // Instance of 'Person'
  print(person1); // name is peter

}