void main() {
  bool isTrue = true;
  var isFalse = false;

  print(isTrue && isFalse);
  // ??= 赋值运算符
  int b;
  b ??= 10;
  print(b); // 10

  int c = 5;
  c ??= 20;
  print(c); // 5

  int d = 0;
  d ??= 20;
  print(d); // 0

  // 条件运算符
  int gender = 0;
  String str = gender == 0 ? 'Male' : 'Female';
  print(str);

  // 条件运算符 ??
  String aa;
  String bb = 'java';
  String cc = aa ?? bb;
  print(cc);
}