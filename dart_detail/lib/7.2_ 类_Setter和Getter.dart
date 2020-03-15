main() {
  var rectangle = Rectangle(0,0,1,1);
  print([rectangle.top, rectangle.bottom, rectangle.left, rectangle.right, rectangle.width, rectangle.height]);
  rectangle.right = 20; // set
  rectangle.bottom = 30; // set
  print([rectangle.top, rectangle.bottom, rectangle.left, rectangle.right, rectangle.width, rectangle.height]); // get
}

class Rectangle {
  num top; // 默认有get,set  num get top => this.top
  num left;
  num width;
  num height;

  Rectangle(this.top, this.left, this. width, this.height);

  num get bottom => top + height;

  set bottom(num value) => top = value - height;

  num get right => left + width;

  set right(num value) => left = value - width;
}
