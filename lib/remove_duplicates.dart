void main() {
  var l = [
    'd',
    'u',
    'r',
    'v',
    'a',
    'd',
    'e',
    'o',
    'r',
    'u',
    'k',
    'h',
    'k',
    'a',
    'r'
  ];
  removeDuplicates(l);
  print(l);
}

void removeDuplicates(List n) {
  var indexesToRemove = [];
  var visited = [];
  for (var i = 0; i < n.length; i++) {
    var a = n[i];
    if (visited.contains(a)) {
      indexesToRemove.add(i);
    } else {
      visited.add(a);
    }
  }
  var indexShift = 0;
  for (var i in indexesToRemove) {
    var index = i - indexShift;
    n.removeAt(index);
    indexShift = indexShift + 1;
    print(i);
  }
}
