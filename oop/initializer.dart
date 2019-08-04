// http://dart.goodev.org/guides/language/language-tour#initializer-list%E5%88%9D%E5%A7%8B%E5%8C%96%E5%88%97%E8%A1%A8
import 'dart:math';

class Point {
  final num x;
  final num y;
  final num distanceFromOrigin;
  //  初始化表达式等号右边的部分不能访问 this
  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}

main() {
  var p = new Point(2, 3);
  print(p.distanceFromOrigin);
}
