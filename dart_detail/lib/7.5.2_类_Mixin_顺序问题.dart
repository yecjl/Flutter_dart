main() {
  /// 1、with 有先后顺序的，后面覆盖前面的值
  print('class AB = ${AB().getMessage()}');
  print('class BA = ${BA().getMessage()}');

  /// 2、子类自己重新了这个方法，按照子类的值
  print('class C = ${C().getMessage()}');

  /// implements 表示需要实现这个方法，而A中重写了这个方法，那就按照with最后实现的方法的值
  print('class D = ${D().getMessage()}');
}

abstract class A {
  String getMessage() => 'A';
}

abstract class B {
  String getMessage() => 'B';
}

abstract class P {
  String getMessage() => 'P';
}

class AB extends P with A, B {}

class BA extends P with B, A {}

class C extends P with A, B {
  @override
  String getMessage() => 'C';
}

class D extends P with A implements B {}
