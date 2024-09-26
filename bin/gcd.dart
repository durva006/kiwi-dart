import 'dart:io';

void findGCD() {
  var g = gcd(48);
  stdout.write(g);
}

int gcd(int n) {
  for (var i = n - 1; i >= 1; i--) {
    if (n % i == 0) {
      return i;
    }
  }
  return 1;
}
