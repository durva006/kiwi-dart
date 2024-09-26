import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var number = int.parse(input);
    var a = findFibonacciNumbers(number);
    stdout.write(a);
  }
}

List<BigInt> findFibonacciNumbers(int n) {
  var r = [BigInt.from(0), BigInt.from(1)];
  while (r.length < n) {
    BigInt next = r[r.length - 1] + r[r.length - 2];
    r.add(next);
  }
  return r;
}
