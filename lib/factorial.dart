import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var number = int.parse(input);
    var a = calculateFactorial(number);
    print(a);
  }
}

int calculateFactorial(int n) {
  int result = 1;
  for (var i = n; i > 1; i--) {
    result = result * i;
    stdout.writeln(i);
  }
  return result;
}
