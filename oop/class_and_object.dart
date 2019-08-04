import 'Person.dart';

void main() {
  var person = new Person();
  person.name = 'tom';
  person.age = 20;

  // person.address = "ddd";
  print(person.name);
  print(person.address);
  person.work();
}

// class Person {
//   String name;
//   int age;
//   final String address = "China"; // 使用final声明只读属性

//   void work() {
//     print('Name is $name, Age is $age, He is working...');
//   }
// }
