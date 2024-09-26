import 'dart:math';
import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var number = int.parse(input);
    var p = findPerfectSquare(number);
    print(p);
  }
}

bool findPerfectSquare(int n) {
  var d = sqrt(n);
  var v = d.round();
  return d == v;
}
