List<String> getVowelsInString(String text) {
  var result = <String>[];
  for (var v = 0; v < text.length; v++) {
    var char = text[v];
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u' ||
        char == 'A' ||
        char == 'E' ||
        char == 'I' ||
        char == 'O' ||
        char == 'U') {
      result.add(char);
    }
  }
  return result;
}
