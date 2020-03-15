main() {
  var vector1 = Vector(1,2);
  var vector2 = Vector(10,20);
  var add = vector1 + vector2;
  print('add: x = ${add.x}, y = ${add.y}');

  var minus = vector2 - vector1;
  print('minus: x = ${minus.x}, y = ${minus.y}');
}

class Vector {
  final int x;
  final int y;

  const Vector(this.x, this.y);

  Vector operator +(Vector v) {
    return new Vector(x + v.x, y + v.y);
  }

  Vector operator -(Vector v) {
    return new Vector(x - v.x, y - v.y);
  }
}
