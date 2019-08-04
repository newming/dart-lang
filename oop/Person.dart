// 加上_限制只在这个文件内可以访问
// class _Person {
class Person {
  String name;
  int age;
  final String address = "China"; // 使用final声明只读属性

  void work() {
    print('Name is $name, Age is $age, He is working...');
  }
}