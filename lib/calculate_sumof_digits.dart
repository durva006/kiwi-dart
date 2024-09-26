import 'dart:io';

void main() {
  stdout.write('enter a number: ');
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var number = int.parse(input);
    var d = calculateSumOfDigits(number);
    stdout.write(d);
  }
}

int calculateSumOfDigits(int n) {
  var sum = 0;
  while (n != 0) {
    var r = n / 10;
    var q = r.floor();
    var digit = ((r - q) * 10).round();
    sum = sum + digit;
    n = q;
  }
  return sum;
}
