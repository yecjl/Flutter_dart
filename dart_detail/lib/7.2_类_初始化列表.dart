import 'dart:math';

main() {
  Point point = Point(10, 20);
  print([point.x, point.y, point.distanceFromOrigin]);
}

class Point {
  final num x; // final变量不能被修改，必须被构造函数初始化
  final num y;
  final num distanceFromOrigin;

  // 初始化列表
  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}
