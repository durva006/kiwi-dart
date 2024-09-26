import 'dart:io';

void main() {
  stdout.write('enter the pyramid height: ');
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  }
  printPyramid(int.parse(input));
}

void printPyramid(int n) {
  for (var i = 0; i < n; i++) {
    var l = '';
    for (var j = 0; j < (n - i); j++) {
      l = l + " ";
    }
    for (int k = 0; k <= i; k++) {
      l = l + '*';
      l = l + " ";
    }
    stdout.writeln(l);
  }
}
