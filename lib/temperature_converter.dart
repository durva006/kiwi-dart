void main() {
  var r = celciusToFahrenheit(36);
  var s = fahrenheitToCelcius(48);
  print(r);
  print(s);
}

double celciusToFahrenheit(int n) {
  var f = n * 9 / 5 + 32;
  return f;
}

double fahrenheitToCelcius(int i) {
  var c = (i - 32) * 5 / 9;
  return c;
}
