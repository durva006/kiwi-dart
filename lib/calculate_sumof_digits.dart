void main() {
  var d = calculateSumOfDigits(2468);
  print(d);
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
