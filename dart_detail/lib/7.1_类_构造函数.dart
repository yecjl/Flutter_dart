main() {
  // 1、使用构造函数创建对象
  PointDart point1 = PointDart(1, 2);
  print(point1);
  print([point1.x, point1.y]);

  // 2、使用命名构造函数创建对象
  PointDart point2 = PointDart.fromJson({'x': 10, 'y': 20});
  print(point2);

  // 3、使用重定向构造函数创建对象
  PointDart point3_1 = PointDart.alongAxis_1(100);
  print(point3_1);
  PointDart point3_2 = PointDart.alongAxis_2(100);
  print(point3_2);
}

/// java中写法
class PointJava {
  num x;
  num y;

  PointJava(num x, num y) {
    this.x = x;
    this.y = y;
  }
}

/// dart建议写法
class PointDart {
  num x;
  num y;

  /// 1、dart 构造函数
  PointDart(this.x, this.y);

  /// 2、命名构造函数
  PointDart.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
  }

  /// 3、重定向构造函数，使用冒号调用其他构造函数
  PointDart.alongAxis_1(num x) : this(x, 0);
  PointDart.alongAxis_2(num x) : this.fromJson({'x': x, 'y': 200});

  @override
  String toString() {
    return 'x = $x , y = $y';
  }
}
