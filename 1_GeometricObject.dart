import 'dart:math';

class GeometricObject {
  String color = "white";
  bool filled = false;

  GeometricObject();

  GeometricObject.argument(this.color, this.filled);

  @override
  String toString() {
    return 'GeometricObject{color: $color, filled: $filled}';
  }
}

class Triangle extends GeometricObject {
  double side1 = 1.0;
  double side2 = 1.0;
  double side3 = 1.0;

  Triangle();

  Triangle.argument(this.side1, this.side2, this.side3);

  double getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return 'Triangle: side1: $side1, side2: $side2, side3: $side3';
  }
}

class rectangle extends GeometricObject {
  double width = 1.0;
  double height = 1.0;

  rectangle() {
    width = width;
    height = height;
  }

  rectangle.argument(this.width, this.height, String color, bool filled)
    : super.argument(color, filled);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return 'Rectangle: height: $height, width: $width';
  }
}

void main() {
  GeometricObject g1 = GeometricObject();
  GeometricObject g2 = GeometricObject.argument("red", true);

  Triangle t1 = Triangle();
  Triangle t2 = Triangle.argument(3.0, 4.0, 5.0);
  print(t2.getArea());
  print(t2.getPerimeter());

  rectangle r1 = rectangle();
  rectangle r2 = rectangle.argument(2.0, 4.0, "blue", false);
  print(r2.getArea());
  print(r2.getPerimeter());
}
