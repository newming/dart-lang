void main() {
  var person1 = new Person(18);
  var person2 = new Person(18);

  print(person1 > person2);

  // 覆写中括号 [] person1.age => person1['age']
  print(person1['age']);

  // 覆写 ==
  print(person1 == person2);
}

class Person {
  int age;
  Person(this.age);

  // 覆写操作符 this 指代当前对象
  bool operator >(Person person) {
    return this.age > person.age;
  }

  int operator [](String str) {
    if ("age" == str) {
      return age;
    }
    return 0;
  }

  // 覆写 == 则还应该覆写对象的 hashCode getter 函数 http://dart.goodev.org/guides/libraries/library-tour#implementing-map-keys
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              age == other.age;
  @override
  int get hashCode => age.hashCode;
}
