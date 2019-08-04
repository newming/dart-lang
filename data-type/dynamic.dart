void main() {
  var a;
  a = 10;
  a = 'dart';
  print(a); // 动态类型，可以随意改变数据类型

  dynamic b = 20;
  b = 'java';
  print(b);

  var list = new List<dynamic>();
  list.add(1);
  list.add('hello');
  list.add(true);
  print(list);
}