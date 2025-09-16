abstract class Shape {
  double? _area;

  void area();

  void setArea(double value) {
    _area = value;
  }


  double getArea() {
    return _area ?? 0.0;
  }
}


class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void area() {
    double result = 3.1416 * radius * radius;
    setArea(result);  // store area using setter
  }
}

void main() {
  Circle c1 = Circle(13);
  c1.area(); // calculate and set area
  print("Circle Area: ${c1.getArea()}");
}
