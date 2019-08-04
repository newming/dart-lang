void main(){
  // 条件成员访问
  // Person person;
  // Person person = new Person();
  // person?.work(); // 如果前边为空则不往后边执行了

  // 类型转换 as
  var person;
  person = '';
  person = new Person(); //由于多次修改 person 类型，已经无法推测 person 的类型
  (person as Person).work();

  // 是否是指定类型
  var person1;
  person1 = "";
  if (person1 is Person) {
    person1.work();
  }

  // 级联操作
  var person2 = new Person();
  person2..name = "Tom"
        ..age = 20
        ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print('work');
  }
}
