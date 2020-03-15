main() {
//  Child1 child1 = Child1(1, 2);
//  Child2 child2 = Child2(1, 2);
//  Child3 child3 = Child3(1, 2);
  Child4 child4 = Child4.formJson(1, 2);
}

/// 1、父类有默认构造
class Parent1 {
  int x;
  int y;

  Parent1() {
    print("父类构造函数 x = $x, y = $y");
  }
}

class Child1 extends Parent1 {
  int x;
  int y;

  // 如果父类有默认构造，会调用父类构造的
//  Child(x, y) {
//    print("子类构造函数");
//  }

  // : super() 可以省略
  Child1(x, y) : super() {
    print("子类构造函数 x = $x, y = $y");
  }
}

/// 2、父类没有默认构造
class Parent2 {
  int x;
  int y;

  Parent2(this.x, this.y) {
    print("父类构造函数 x = $x, y = $y");
  }
}

class Child2 extends Parent2 {
  int x;
  int y;

  // 报错：Parent2 没有默认构造，必须指定父类构造
//  Child2(x, y) {
//    print("子类构造函数");
//  }

  // 若父类没有默认构造函数， 需要手动调用父类其他构造函数
  Child2(x, y) : super(x, y) {
    print("子类构造函数 x = $x, y = $y");
  }
}

/// 3、父类没有默认构造
///    - 父类命名构造函数不会传递
///    - 调用父类构造函数的参数无法访问 this
class Parent3 {
  int x;
  int y;

  Parent3.formJson(x, y)
      : x = x,
        y = y {
    print("父类构造函数 x = $x, y = $y");
  }
}

class Child3 extends Parent3 {
  int x;
  int y;

  // 子类构造函数 x = null, y = null, super x = 1, super y = 2
  Child3(x, y) : super.formJson(x, y) {
    print(
        "子类构造函数 x = ${this.x}, y = ${this.y}, super x = ${super.x}, super y = ${super.y}");
  }

// 子类构造函数 x = 1, y = 2, super x = 1, super y = 2
//  Child3(this.x, this.y) : super.formJson(x, y) {
//    print("子类构造函数 x = ${this.x}, y = ${this.y}, super x = ${super.x}, super y = ${super.y}");
//  }

// 报错：调用父类构造函数的参数无法访问 this
//  Child3(x, y) : super.formJson(this.x, this.y) {
//    print("子类构造函数 x = ${this.x}, y = ${this.y}, super x = ${super.x}, super y = ${super.y}");
//  }
}

/// 4、父类没有默认构造
///    - 在构造函数的初始化列表中使用super()，需要把它放到最后
class Parent4 {
  int x;
  int y;

  Parent4.formJson(x, y)
      : x = x,
        y = y {
    print("父类构造函数 x = $x, y = $y");
  }
}

class Child4 extends Parent4 {
  int x;
  int y;

  Child4.formJson(x, y)
      : x = x,
        y = y,
        super.formJson(x, y) {
    print(
        "子类构造函数 x = ${this.x}, y = ${this.y}, super x = ${super.x}, super y = ${super.y}");
  }
}
