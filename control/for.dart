void main() {
  var list = [1, 2, 3, 4];

  for (var i = 0; i < list.length; i++) {
    print("$i - ${list[i]}");
  }

  print("---------");

  for (var item in list) {
    print(item);
  }
}