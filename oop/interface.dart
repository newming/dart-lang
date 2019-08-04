void main() {

}

// class Person {
//   String name;
//   int get age => 18;

//   void run() {
//     print("Person run ...");
//   }
// }

// 使用抽象类当作接口更合适
abstract class Person {
  String name;
  int get age;
  void run();
}

// 类作为接口使用，使用 implements 关键字
class Student implements Person {
  @override
  String name;

  @override
  int get age => 30;

  @override
  void run() {
  }

}
