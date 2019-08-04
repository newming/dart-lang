void main() {
  // 匿名方法
  var func = (str) {
    print("hello-$str");
  };

  func("world");

  // 自执行函数
  (() {
    print('auto exec');
  })();

  // 匿名函数作为参数使用
  var list = [1, 2, 3];
  list.forEach((int item){
    print('aha - $item');
  });
}