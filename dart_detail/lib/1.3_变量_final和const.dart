void main() {
  /**
   * final和const 共同点
   */
  // 1、声明的类型可省略
  final String a1 = "123"; // String 类型可以省略
  final a2 = "123";

  const String b1 = "123"; // String 类型可以省略
  const b2 = "123";

  // 2、初始化后不能再赋值

  // 3、不能和var同时使用
//  final var c1 = "123"; // Members can’t be declared to be both ‘final’ and ‘var’.

  /**
   * final和const 区别(需要注意的地方)：
   */
  // 1、类级别常量，使用static const
  // 2、const可使用其他const 常量的值来初始化其值
  const width = 2;
  const height = 3;
  const square = width + height;
  // 3、使用const赋值声明，const可省略
  const list = []; // 1.2版本以前写法：const list = const [];

  // 4、可以更改非final、非const变量的值，即使曾经具有const值
  var list1 = const [1,2,3]; // 可以省略const：  var list1 =  [1,2,3];
  final list2 = const [1,2,3];
  const list3 = const [1,2,3];
  list1 = [1];
//  list2 = [1]; // 编译报错
//  list3 = [1]; // 编译报错

  // 5、const导致的不可变性是可传递的
  var list4 = [1,2,3];
  list4[1] = 5;
  print("list4=" + list4.toString());
  final List list5 = [1,2,3];
  const List list6 = [1,2,3];
  list5[1] = 5;
  print("list5=" + list5.toString());
//  list6[1] = 5; //Cannot modify an unmodifiable list
//  print("list6=" + list6.toString());

  // 6、相同的const常量不会在内存中重复创建
  final List list7 = [1,2,3];
  final List list8 = [1,2,3];
  print(identical(list7, list8)); // false

  const List list9 = [1,2,3];
  const List list10 = [1,2,3];
  print(identical(list9, list10)); // true


  // 7、const需要是编译时常量
  final dt1 = DateTime.now();
  print(dt1);

//  const dt2 = DateTime.now(); // 报错了，DateTime.now()这个是运行时常量，编译时看不到无法确定值

}