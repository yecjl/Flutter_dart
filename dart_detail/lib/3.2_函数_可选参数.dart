main() {
  // 1、可选命名参数
//  test1();

  // 2、可选位置参数
//  test2();

  // 3、默认参数值
  test3();

}

/// 1、可选命名参数
test1() {
  // b 如果不传，默认值 = 10，这里建议用等号而不是冒号
  int add({int a, int b = 10}) {
    a = a == null ? 0 : a;
    return a + b;
  }
  print(add());
  print(add(a: 1));
  print(add(a:1, b:2));
}

/// 2、可选位置参数:
/// 调用包含可选位置参数的方法时，无需使用paramName:value的形式，因为 可选位置参数是位置，如果想指定某个位置上的参数值，则必须前面位置的已经有值,即使前面的值存在默认值
test2() {
  // a 必填，b、c 选填
  int add(int a, [int b = 10, int c]) {
    a = a == null ? 0 : a;
    b = b == null ? 0 : b;
    c = c == null ? 0 : c;
    return a + b + c;
  }
  print(add(1));
  print(add(1, 2));
  print(add(1, 2, 3));
}

/// 3、默认参数值
/// 如果是List, Map 使用默认参数，必须要用const关键字
test3 () {
  int add({List list = const [1, 2, 3]}) {
    int num = 0;
    for (var value in list) {
      num += value;
    }
    return num;
  }

  print(add());
  print(add(list : [1, 4, 9]));
}