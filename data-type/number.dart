void main () {
  num a = 10;
  a = 10.5; // 通过 num 声明的，可以在 int double 之间切换
  print(a);

  int b = 40;
  // b = 40.5;
  print(b); // 通过 int 声明的，只能是 int 了

  double c = 30.5;
  print(c);

  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);
  print(b ~/ c);
  print(b % c);

  print(b.isEven);
  print(b.isOdd);
  print(b.isNaN);

  int d = -20;
  print(d.abs());
}
