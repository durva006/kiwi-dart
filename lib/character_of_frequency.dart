import 'dart:io';

//check character of frequency
void main() {
  stdout.write('Enter a number/word: ');
  var input = stdin.readLineSync();
  if (input == null) {
    exit(1);
  } else {
    var word = (input);
    var x = findFrequency(word);
    print(x);
  }
}

Map findFrequency(String text) {
  Map frequency = {};
  for (var i = 0; i < text.length; i++) {
    var char = text[i];
    if (frequency[char] == null) {
      frequency[char] = 0;
    }
    frequency[char] = frequency[char] + 1;
  }
  return frequency;
}
