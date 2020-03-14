main() {
  testNumbers();
  testStrings();
  testBoolean();
  testList();
  testSet();
  testMap();
  testRunes();
  testSymbols();
}

/// 1、Numbers	数值
void testNumbers() {
  // 1、int : 整数值
  // 2、double : 64-bit双精度浮点数
  // 3、int和double是num的子类
}

/// 2、Strings 字符串
void testStrings() {
  // 1、Dart 字符串是 UTF-16 编码的字符序列，可以使用单引号或者双引号来创建字符串
  String s1 = 'dsad' "sada" 'dsd';
  print("s1: " + s1);

  String s2 = '''
  ewew
  rtrt
  hfgh''';
  print("s2: \n" + s2);

  String s3 = '''wewe\nfdrt''';
  print("s3: \n" + s3);

  // 2、可以使用 r 前缀创建”原始raw”字符串。
  String s4 = r'''wewe\nfdrt''';
  print("s4: \n" + s4);

  // 3、可以在字符串中使用表达式： ${expression},如果表达式是一个标识符，可以省略 {}，如果表达式的结果为一个对象，则 Dart 会调用对象的 toString() 函数来获取一个字符串。
}

/// 3、Booleans 布尔值
void testBoolean() {
  // bool对象未初始化的默认值是null
//  bool isNull;
//  if (!isNull) { // boolean expression must not be null
//    print('aaa');
//  }
}

/// 4、Lists 列表(数组)
void testList() {
  // 1、Dart中可以直接打印list包括list的元素，List也是对象。java中直接打印list结果是地址值
  // 2、Dart中List的下标索引和java一样从0开始
  // 3、和java一样支持泛型。
  // 4、有增删改查，支持倒序，自带排序、洗牌，可使用+将两个List合并

  /**
   * list声明
   */
  List list1 = List(); // 长度不固定
  list1.add(123);
  list1.add(234);
  list1.add('fsdfds');
  print('list1: ' + list1.toString());

//  List list2 = List(2); // 长度固定, 超过长度报错：Cannot add to a fixed-length list
//  list2.add(123);
//  list2.add(234);
//  list2.add('fsdfds');
//  print('list2: ' + list2.toString());
}

/// 5、Sets 集合
void testSet() {
  Set set1 = Set();
  set1.addAll([1, 2, 3, 4]);
  Set set2 = Set();
  set2.addAll([1, 2, 5, 6]);

  // 1、set1.difference(set2):返回set1集合里有但set2里没有的元素集合  [补集]
  print('difference: ' + set1.difference(set2).toString());
  print('difference: ' + set2.difference(set1).toString());

  // 2、set1.intersection(set2)：返回set1和set2的交集  [交集]
  print('intersection: ' + set1.intersection(set2).toString());

  // 3、set1.union(set2)：返回set1和set2的并集  [并集]
  print('union: ' + set1.union(set2).toString());

  // 4、set1.retainAll()：set1只保留某些元素(要保留的元素要在原set中存在）
  set1.retainAll([4]);
  print('retainAll: ' + set1.toString());
}

/// 6、Maps 集合
void testMap() {
  // 跟java类似
}

/// 7、Runes 符号字符，符号字符在dart里面是32位的
void testRunes() {
//  Runes runes = new Runes('\u{1F602} \u6211');
  Runes runes = new Runes('''\u{1F478}\u{1F934}''');
  var str1 = String.fromCharCodes(runes);
  print("Runes: " + str1);
}

/// 8、Symbols 标识符
void testSymbols() {
  // Symbol标识符，主要是反射用，现在mirrors模块已经被移除 import 'dart: mirrors'

}
