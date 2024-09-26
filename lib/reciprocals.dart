import 'dart:io';

void main() {
  // sum of all n reciprocals
  // 5 -> 1/1 + 1/2 + 1/3 + 1/4 + 1/5 = 2.283333333333333
  // 10 -> 1/1 + 1/2 + 1/3 + 1/4 + 1/5 + 1/6 + 1/7 + 1/8 + 1/9 + 1/10 = 2.9289682539682538
  // 2 -> 1/1 + 1/2 = 1.5
  final input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  }
  final n = int.parse(input);
  print(averageOfReciprocals(n));
}

double sumOfReciprocals(int n) {
  double sum = 0;
  // iterate from 1 to n
  for (int i = 1; i <= n; i++) {
    final x = 1 / i;
    sum = sum + x;
  }
  return sum;
}

double averageOfReciprocals(int n) {
  final sum = sumOfReciprocals(n);
  return sum / n;
}
