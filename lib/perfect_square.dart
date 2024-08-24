import 'dart:math';

void main() {
  var p = findPerfectSquare(49);
  print(p);
}

bool findPerfectSquare(int n) {
  var d = sqrt(n);
  var v = d.round();
  return d == v;
}
