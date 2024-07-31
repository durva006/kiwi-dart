import 'dart:math';

abstract class Shape {}

class Circle {
  var radius = 0;
  num getDiameter() {
    return radius * 2;
  }

  num getCircumference() {
    return 2 * pi * radius;
  }
}

class Rectangle {
  var length = 0;
  var breadth = 0;
  num getPerimeter() {
    return 2 * (length + breadth);
  }

  num getArea() {
    return length * breadth;
  }
}

class Triangle {
  var height = 0;
  var base = 0;
  var hypotenuse = 0;
  num getPerimeter() {
    return hypotenuse + base + height;
  }

  num getArea() {
    return 1 / 2 * base * height;
  }
}

class Square {
  var side = 0;
  num getPerimeter() {
    return 4 * side;
  }

  num getArea() {
    return side * side;
  }

  num getDiagonal() {
    return sqrt(2) * side;
  }
}

class Pentagon {
  var side = 0;
  var apothem = 0;
  num getArea() {
    return 5 / 2 * side * apothem;
  }

  num getPerimeter() {
    return 5 * side;
  }
}

class Hexagon {
  var side = 0;
  num getPerimeter() {
    return 6 * side;
  }

  num getArea() {
    return 3 * sqrt(3) * side * side;
  }
}

class Heptagon {
  var side = 0;
  num getPerimeter() {
    return 7 * side;
  }

  num getArea() {
    return 7 / 4 * side * side * 1 / tan(180 / 7);
  }
}

class Octagon {
  var side = 0;
  num getPerimeter() {
    return 8 * side;
  }

  num getArea() {
    return 2 * (1 + sqrt(2)) * side * side;
  }
}
