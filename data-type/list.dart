void main () {
  var list1 = [1, 2, 3, 'dart', true]; // 可以有不同类型
  print(list1);
  print(list1[1]);

  var list2 = const [123, 333, 44]; // 创建一个不可变的 list
  list2[2] = 5; // Cannot modify an unmodifiable list

  var list3 = new List();
  
}
