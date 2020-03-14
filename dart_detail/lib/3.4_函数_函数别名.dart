main() {
  Function1 funAdd = add(1, 2);
  Function1 funMultiply = multiply(1, 2);
  Function1 funDivide = divide(1, 2);
  calculateAdd1(1, 2, add);
  calculateAdd2(1, 2, add);
  calculateAdd3(1, 2, add);
}

/// 给函数取个别名，调用的时候比较清晰
typedef Function1(int a, int b);
typedef Function2<T, K>(T a, K b);

add(int a, int b) => print('${a + b}');

multiply(int a, int b) => print('${a * b}');

divide(int a, int b) => print('${a - b}');

calculateAdd1(int x, int y, add(int a, int b)) {
  add(x, y);
}

calculateAdd2(int x, int y, Function1 func) {
  func(x, y);
}

calculateAdd3(int x, int y, Function2<int, int> func) {
  func(x, y);
}
