void main() {
  // 方法对象 将函数作为变量进行赋值
  Function func = printHello;
  func();

  var list = [1, 2, 3, 4];
  list.forEach(print); // 将 function 作为参数传递

  // 将函数作为参数传递
  var list2 = ['1', '2', '3'];
  var newList = listTimes(list2, times);
  print(newList);
}

void printHello() {
  print("hello");
}

List listTimes(List list, String f(str)) {
  for (var i = 0; i < list.length; i++) {
    list[i] = f(list[i]);
  }
  return list;
}

String times(str) {
  return str * 3; // 字符串可以直接做一些运算
}
