void main() {
  // var 如果没有初始值，可以变成任何类型
  // var 如果有初始值，类型锁定
  var a;
  a = "123";
  a = 123;
  print(a);
  var a1 = "123";
//  a1 = 123; // 编译就报错了

  // dynamic：动态任意类型，编译阶段不检查类型
  dynamic b = "123";
  b = 123;
  b.test(); // 运行后报错：NoSuchMethodError: Class 'int' has no instance method 'test'.

  // Object：动态任意类型，编译阶段检查类型
  Object c = "123";
  c = 123;
//  c.test(); // 编译就报错了
}