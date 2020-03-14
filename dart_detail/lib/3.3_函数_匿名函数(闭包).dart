main () {
//  test1();
//  test2();
  test3();
}

/// 1、可赋值给变量，通过变量调用
test1() {
  var noParams = () => print("无参数匿名函数");
  var hasParams = (value) => print('$value');
  noParams();
  hasParams('有参数匿名函数');

  // 不建议的调用方式
  (() => print("不建议方式的匿名函数调用"))();
}

/// 2、可在其他函数中直接调用或传递给其他函数
test2() {
  List changeList(List list, String getDoubleList(str)) {
    for (var i = 0; i < list.length; ++i) {
      list[i] = getDoubleList(list[i]);
    }
    return list;
  }

  var list = ['a', 'b', 'c'];
  print(changeList(list, (str) => str * 2));

  // list 的 forEach方法接受的参数也是一个匿 名函数
  list.forEach((element) => print('element = $element'));

}

/// 3、函数的闭包，函数返回值是一个函数
test3() {
  Function getNum(int a, int b) {
    return (value) => value + (a * b);
  }
  var result = getNum(10, 20);
  print(result(10));

}