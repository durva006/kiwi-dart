void main() {
  var x = [10, 15, 20, 30, 35, 40, 45, 50];
  var r = findMissingNumber(x);
  print(r);
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
