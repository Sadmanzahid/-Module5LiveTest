abstract class Shape {
  void area();
}
class Circle extends Shape {
  double radius;
  double? areaValue;
  Circle(this.radius);

  @override
  void area() {
    areaValue = 3.1416 * radius * radius;
    print("Circle Area: $areaValue");
  }
}
void main() {
  Circle c1 = Circle(15);
  c1.area();
}
