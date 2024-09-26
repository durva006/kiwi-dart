import 'dart:io';

void main() {
  stdout.write("Enter a year: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var number = int.parse(input);
    var r = isLeapYear(number);
    print(r);
  }
}

bool isLeapYear(int year) {
  if ((year % 4 == 0)) {
    if (year % 100 != 0) {
      return true;
    } else {
      if (year % 400 == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else {
    return false;
  }
}
