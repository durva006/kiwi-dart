import 'dart:ffi';

void main() {
  printPyramid(10);
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
    print(l);
  }
}
