import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("enter a number: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  }
  try {
    var number = int.parse(input);
    var a = armstrongNumber(number);
    print(a);
  } on FormatException {
    stderr.writeln("invalid input");
    exit(5);
  }
}

bool armstrongNumber(int target) {
  var digits = [];
  var n = target;
  while (n != 0) {
    var p = n / 10;
    var q = p.floor();
    var r = ((p - q) * 10).round();
    digits.add(r);
    n = q;
  }
  num sum = 0;
  for (var i = 0; i < digits.length; i++) {
    var d = digits[i];
    var l = pow(d, digits.length);
    sum = sum + l;
  }
  if (target == sum) {
    return true;
  } else {
    return false;
  }
}
