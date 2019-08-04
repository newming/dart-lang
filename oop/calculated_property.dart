// 计算属性
void main() {
  var rect = new Reacangle();
  rect.height = 20;
  rect.width = 10;

  // print(rect.area());
  print(rect.area);
  rect.area = 400;
  print(rect.width);
}

class Reacangle {
  num width, height;

  // num area() {
  //   return width * height;
  // }
  // 计算属性
  // num get area {
  //   return width * height;
  // }
  num get area => width * height;
      set area(value) {
        width = value / 20;
      }
}
