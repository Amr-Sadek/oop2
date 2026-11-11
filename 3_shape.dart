abstract class Shape {
  String? color;

  double getArea();

  @override
  String toString() {
    return 'shape{color: $color}';
  }
}

class Triangle extends Shape {
  int? base;
  int? height;

  @override
  double getArea() {
    return (base! * height!) / 2;
  }

  @override
  String toString() {
    return 'Triangle{base: $base, height: $height}';
  }
}

class Rectangle extends Shape {
  int? length;
  int? width;

  @override
  double getArea() {
    int area = length! * width!;
    return area.toDouble();
  }

  @override
  String toString() {
    return 'Rectangle{length: $length, width: $width}';
  }
}

void main() {
  Triangle t1 = Triangle();
  t1.color = "red";
  t1.base = 10;
  t1.height = 20;
  print(t1);
  print(t1.getArea());

  Rectangle r1 = Rectangle();
  r1.color = "blue";
  r1.length = 10;
  r1.width = 20;
  print(r1);
  print(r1.getArea());
}
