import 'dart:io';

void main() {
  stdout.write("Enter temperature: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var number = int.parse(input);
    stdout.write('Degree Fahrenheit: ');
    var r = celciusToFahrenheit(number);
    print(r);
    stdout.write('Degree Celcius: ');
    var s = fahrenheitToCelcius(number);
    print(s);
  }
}

double celciusToFahrenheit(int n) {
  var f = n * 9 / 5 + 32;
  return f;
}

double fahrenheitToCelcius(int i) {
  var c = (i - 32) * 5 / 9;
  return c;
}
