import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var string = (input);
    var r = reverseString(string);
    print(r);
  }
}

String reverseString(String input) {
  var result = "";
  for (var i = input.length - 1; i >= 0; i--) {
    var v = input[i];
    result = result + v;
  }
  return result;
}
