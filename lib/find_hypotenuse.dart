import 'dart:math';
import 'dart:io';

num findHypotenuse(num sideA, num sideB) {
  return pow(pow(sideA, 2) + pow(sideB, 2), 1 / 2);
}

void main() {
  stdout.write("enter value for side A: ");
  var inputA = stdin.readLineSync();
  stdout.writeln("enter value for side B: ");
  var inputB = stdin.readLineSync();
  if (inputA == null || inputB == null) {
    exit(1);
  } else {
    var sideA = int.parse(inputA);
    var sideB = int.parse(inputB);
    var a = findHypotenuse(sideA, sideB);
    stdout.write('Hypotenuse is: ');
    print(a);
  }
}
