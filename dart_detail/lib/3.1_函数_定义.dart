main() {
  print(test()); // null 一切皆对象
  print("add: " + add(1, 2).toString());
}

/// 定义函数时可省略类型
test() {
  // 默认会有一行 return null;
}

/// 最好加上返回值
int add(int a, int b) {
  return a + b;
}

/// 支持缩写语法 =>
int multiply(int a, int b) => a * b;

/// 可在函数内定义
method () {
  // 可以无限嵌套
  int add(int a, int b) {
    int add(int a, int b) {
      int add(int a, int b) {
        return a + b;
      }
      return a + b;
    }
    return a + b;
  }
}
