import 'dart:io';

void main() {
  stdout.write("enter a list: ");
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var list = input.split(',');
    List<int> x = [];
    for (var a = 0; a < list.length; a++) {
      var y = list[a];
      var r = int.parse(y);
      x.add(r);
    }
    var a = findMissingNumber(x);
    print(a);
  }
}

int? findMissingNumber(List<int> input) {
  for (var i = 0; i < input.length; i++) {
    if (i == 0) {
      continue;
    }
    var current = input[i];
    var previous = input[i - 1];
    var diff = current - previous;
    var expected = current + diff;
    var nextNum = input[i + 1];
    if (expected != nextNum) {
      return expected;
    }
  }
  return null;
}
