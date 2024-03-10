class Circle {
  // Private variable
  double _radius = 0;

  // Constructor
  Circle(double radius) {
    if (radius >= 0) {
      _radius = radius;
    }
  }

  // Setter
  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    }
    print('Setter was called');
  }

  // Getter
  double get radius {
    return _radius;
  }
}

void main() {
  var circle = Circle(10);
  print(circle.radius);
  circle.radius = 20;
  print(circle.radius);
  circle.radius = -10;
  print(circle.radius);
}