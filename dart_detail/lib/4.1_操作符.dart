main() {
//  test1();
//  test3();
//  test9();
  test13();

}

/// 1、后缀操作	expr++ expr-- () [] . ?.
/// 【新增】 ?.  调用的对象必须不为空才能调用方法，如果为空，则返回空
test1() {
  String str;
//   print(str.length); // error: The getter 'length' was called on null.
  print(str?.length);
}

/// 2、前缀操作	-expr !expr ~expr ++expr --expr  （和java一样）

/// 3、乘除	* /  %  ~/
/// 【新增】 ~/
test3() {
  print(1 / 2); // 0.5
  print(1 ~/ 2); // 0  先进行1/2，然后去掉小数点， 相当于java里的/
}

/// 4、加减	+ -
/// 5、位移	<< >>
/// 6、按位与	&
/// 7、按位异或	^
/// 8、按位或	|

/// 9、类型操作	>= > <= < as is is!
///【新增】 as is is!  类型判定操作符
test9() {
  num num1 = 1;
  num num2 = 1.5;
  // as 类型转换
  int a = num1 as int;
  print('a = $a');

  // is 判断当前类型是否是指定类型
  print('is = ${num1 is int}');
  print('is = ${num2 is double}');

  // is! 判断当前类型是否不是指定类型
  print('is! = ${num1 is! int}');
}

/// 10、相等	== !=
/// 11、逻辑与	&&
/// 12、逻辑或	||

/// 13、是否为空	??
test13() {
  bool flag;
  // 三元表达式的写法
  flag = flag == null ? false : true;
  print('flag = $flag');

  // 简化三元表达式的写法：如果flag 为空，则返回false，否者返回flag值
  flag = flag ?? false;
  print('flag = $flag');

  // 简化 使用 ??=
  flag ??= false;
  print('flag = $flag');

}

/// 14、三目运算	expr1 ? expr2 : expr3

/// 15、级联	..
void test15() {
  // java写法
  StringBuffer sb1 = StringBuffer();
  sb1.write("123");
  sb1.write("fsdfsf");
  sb1.write("55erewr");
  print("sb1: \n" + sb1.toString());

  // dart .. 可以实现链式调用
  StringBuffer sb2 = StringBuffer();
  sb2
    ..write("123")
    ..write("fsdfsf")
    ..write("55erewr")
    ..writeAll(['a', 'b', 'c']);
  print("sb2: \n" + sb2.toString());
}

/// 16、赋值	= *= /= ~/= %= += -= <<= >>= &= ^= |= ??=
///【新增】 ??=  （见13）