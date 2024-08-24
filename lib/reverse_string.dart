void main() {
  var r = reverseString('hello world');
  print(r);
}

String reverseString(String input) {
  var result = "";
  for (var i = input.length - 1; i >= 0; i--) {
    var v = input[i];
    result = result + v;
  }
  return result;
}
