main() {
  test3();
}

/// 1、抛出Exception 对象
test1() {
  throw new FormatException("格式异常");
}

/// 2、抛出Error 对象
test2() {
  throw new NullThrownError();
}

/// 3、抛出任意非null对象
test3() {
  throw '抛出蛋壳异常';
}