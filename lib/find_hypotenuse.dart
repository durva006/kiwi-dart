import 'dart:math';

num findHypotenuse(num sideA, num sideB) {
  return pow(pow(sideA, 2) + pow(sideB, 2), 1 / 2);
}

void main() {
  var sideA = 5;
  var sideB = 11;
  var h = findHypotenuse(sideA, sideB);
  print('hypotenuse is');
  print(h);
}
