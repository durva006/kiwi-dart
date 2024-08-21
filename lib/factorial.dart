int calculateFactorial(int n) {
  int result = 1;
  for (var i = n; i > 1; i--) {
    result = result * i;
    print(i);
  }
  return result;
}
