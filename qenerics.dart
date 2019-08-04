// 泛型
void main() {
  // 使用 <String> 泛型约束数据
  var list = new List<String>();
  // list.add(1);
  list.add("2");

  // 在 class 和 function 中使用泛型
  var utils = new Utils<int>();
  utils.putInt(22);
  utils.putString<String>("222");
}

// class Utils {
//   int element;
//   String elementStr;

//   void putInt(int element) {
//     this.element = element;
//   }

//   void putString(String element) {
//     this.elementStr = element;
//   }
// }

class Utils<T> {
  T element;

  void putInt(T element) {
    this.element = element;
  }

  void putString<P>(P element) {
    print(element);
  }
}
