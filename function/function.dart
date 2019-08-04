void main(List args) {
  print(args);
  getPerson('zhangs', 18);

  // 可选命名参数
  printPerson("张三");
  printPerson("张三", age: 20); // 传入可选参数时，需要指定function参数key名，不需要顺序一致

  // 可选位置参数
  printPerson1("莉丝", 18, "male"); // 不需要指定参数名称，但是顺序得对
}

String getPerson(String name, int age) {
  return "name=$name, age=$age";
}

printPerson(String name, {int age, String gender}) {
  // 可选参数 使用 {} 存放
  print("name=$name,age=$age, gender=$gender");
}

printPerson1(String name, [int age, String gender]) {
  // 可选参数 使用 {} 存放
  print("name=$name,age=$age, gender=$gender");
}
