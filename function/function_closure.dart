void main() {
  var func = a();
  func();
  func();
  func();
}

a() {
  int count = 0;

  printCount() {
    print(count++);
  }

  return printCount;
}