void main() {
  var d = new D();
  // 全部执行的是C的方法，即后边 Mixins 的会覆盖前边的
  d.a();
  d.b();
  d.c();
}

class A {
  void a() {
    print("A.a()...");
  }
}

class B {
  void a() {
    print("B.a()...");
  }

  void b() {
    print("B.b()...");
  }
}

class C {
  void a() {
    print("C.a()...");
  }

  void b() {
    print("C.b()...");
  }

  void c() {
    print("C.c()...");
  }
  // 作为 Mixins 的类不能有显示声明的构造方法
  // C() {
  // }
}

class D extends A with B, C {
}