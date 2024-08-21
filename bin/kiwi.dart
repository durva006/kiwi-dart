void main() {
  var f = findFibonacciNumbers(100);
  print(f);
}

List<BigInt> findFibonacciNumbers(int n) {
  var r = [BigInt.from(0), BigInt.from(1)];
  while (r.length < n) {
    BigInt next = r[r.length - 1] + r[r.length - 2];
    r.add(next);
  }
  return r;
}
