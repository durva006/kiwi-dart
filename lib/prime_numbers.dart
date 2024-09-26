import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var number = int.parse(input);
    var r = isPrime(number);
    stdout.write('It is a Prime numebr: ');
    print(r);
    var x = isComposite(number);
    stdout.write('It is a Composite number: ');
    print(x);
  }
}

bool isPrime(int n) {
  if (n == 0) {
    return false;
  }
  return !isComposite(n);
}

List<int> findPrimeNumbersUpto(int n) {
  List<int> result = [];
  for (var i = 2; i <= n; i++) {
    if (isComposite(i)) {
      continue;
    }

    result.add(i);
  }
  return result;
}

bool isComposite(int i) {
  if (i == 0) {
    return false;
  }
  return i == 1 || (i != 2 && i != 3 && (i % 2 == 0 || i % 3 == 0));
}
