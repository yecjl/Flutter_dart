main() {
  Point point1 = const Point(1, 2);
  Point point2 = const Point(1, 2);
  print(identical(point1, point2));  // true, 在内存中不会开辟两个对象，是同一对象
}

/// 1、定义const构造函数要确保所有实例变量都是final
/// 2、const关键字放在构造函数名称之前，且不能有函数体
class Point {
  final num x;
  final num y;

  const Point(this.x, this.y);

  @override
  String toString() {
    return 'x = $x , y = $y';
  }
}