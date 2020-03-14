main() {
  // 可在函数内定义
  // 定义函数时可省略类型
  // 支持缩写语法

  // 1、返回类型可省略
  print(test()); // null 一切皆对象
  print("add: " + add(1, 2).toString());
}

test() {
  // 默认会有一行 return null;
}

int add(int a, int b) {
  return a + b;
}
