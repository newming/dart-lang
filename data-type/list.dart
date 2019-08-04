void main () {
  var list1 = [1, 2, 3, 'dart', true]; // 可以有不同类型
  print(list1);
  print(list1[1]);
  print(list1.length);

  // var list2 = const [123, 333, 44]; // 创建一个不可变的 list
  // list2[2] = 5; // Cannot modify an unmodifiable list

  // var list3 = new List();

  var list = ['hello', 'dart'];
  list.add('New');
  print(list);

  list.insert(0, 'first');
  print(list);

  list.remove('New');
  print(list);

  print(list.indexOf('hello'));
  print(list.indexOf('test'));

  list.sort();
  print(list);

  print(list.sublist(2));

  list.shuffle(); // 打乱
  print(list);

  list.forEach(print);
}
