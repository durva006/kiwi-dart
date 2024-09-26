import 'dart:io';

void main() {
  stdout.write('enter value of a: ');
  String? a = stdin.readLineSync();
  stdout.write('enter value of b: ');
  String? b = stdin.readLineSync();
  if (a == null || b == null) {
    exit(1);
  }
  var s = isAnagram(a, b);

  stdout.writeln(s);
}

bool isAnagram(String a, String b) {
  if (a.length != b.length) {
    return false;
  }
  var r = a.split("");
  var t = b.split("");
  r.sort();
  t.sort();
  for (var i = 0; i < r.length; i++) {
    if (r[i] != t[i]) {
      return false;
    }
  }
  return true;
}
