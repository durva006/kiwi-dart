//check character of frequency
void main() {
  print(findFrequency('constitution'));
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
